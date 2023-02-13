import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import '../stores/state/games_state.dart';
import '../stores/store/games_store.dart';

class GamesPage extends StatefulWidget {
  final GamesStore store;

  const GamesPage({super.key, required this.store});

  @override
  State<GamesPage> createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  GamesStore get store => widget.store;

  @override
  void initState() {
    super.initState();
    store.getGames();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Games App'),
      ),
      body: TripleBuilder<GamesStore, Exception, GamesState>(
          store: store,
          builder: ((context, triple) {
            if (triple.isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (triple.error != null) {
              return Text(triple.error.toString());
            }
            return ListView.builder(itemBuilder: ((context, index) {
              return ListTile(
                title: Text(triple.state.games[index].title),
              );
            }));
          })),
    );
  }
}
