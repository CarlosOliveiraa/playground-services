import 'dart:convert';

import 'entity.dart';
import 'mapper_failure.dart';

abstract class JsonMapper<E extends Entity> extends Deserialize<E> {
  const JsonMapper();

  E to(Map<String, dynamic> json);

  List<E> toList(json) {
    try {
      if (json == null) return [];
      return (json as List)
          .cast<Map<String, dynamic>>()
          .map((json) => to(json))
          .toList();
    } catch (error, stackTrace) {
      throw MapperFailure(
          tag: E.runtimeType,
          message: error.toString(),
          stackTrace: stackTrace);
    }
  }

  List<Map<String, dynamic>> asList(json) {
    try {
      if (json == null) return [];
      return (json as List).cast<Map<String, dynamic>>();
    } catch (error, stackTrace) {
      throw MapperFailure(
          tag: E.runtimeType,
          message: error.toString(),
          stackTrace: stackTrace);
    }
  }

  E decode(String source) {
    try {
      return to(jsonDecode(source) as Map<String, dynamic>);
    } catch (error, stackTrace) {
      throw MapperFailure(
          tag: E.runtimeType,
          message: error.toString(),
          stackTrace: stackTrace);
    }
  }
}

abstract class Deserialize<E extends Entity> {
  const Deserialize();

  Map<String, dynamic> from(E entity);

  String encode(E entity) {
    try {
      return jsonEncode(from(entity));
    } catch (error, stackTrace) {
      throw MapperFailure(
          tag: E.runtimeType,
          message: error.toString(),
          stackTrace: stackTrace);
    }
  }

  List<Map<String, dynamic>> fromList(List<E> entities) {
    try {
      return entities.map((entity) => from(entity)).toList();
    } catch (error, stackTrace) {
      throw MapperFailure(
          tag: E.runtimeType,
          message: error.toString(),
          stackTrace: stackTrace);
    }
  }
}
