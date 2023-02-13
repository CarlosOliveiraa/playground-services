import 'failure.dart';

class MapperFailure extends Failure {
  final Type tag;

  const MapperFailure(
      {required this.tag,
      required String message,
      required StackTrace stackTrace})
      : super(message: message, stackTrace: stackTrace);

  @override
  String toString() {
    return '$tag -> $message -> $stackTrace';
  }
}
