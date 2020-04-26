import 'package:flutter/material.dart';
import 'package:peeve_wars/player_window.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Peeve Wars"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_box),
              tooltip: 'Draw (ends turn)',
              onPressed: () {
                print("pressed"); //todo
              },
            ),
            IconButton(
              icon: const Icon(Icons.redo),
              tooltip: 'Discard',
              onPressed: () {
                print("pressed"); //todo
              },
            ),
            IconButton(
              icon: const Icon(Icons.healing),
              tooltip: 'Annoy',
              onPressed: () {
                print("pressed"); //todo
              },
            )

          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                        width: 300, //width of the player column card
                        child: PlayerWindow("$index"),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Card(
                child: Wrap( //your hand
                  children: [
                    Peeve("hello"),
                    Peeve("there"),
                    Peeve("general"),
                    Peeve("kenobi")
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}
