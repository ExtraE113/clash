import 'package:flutter/material.dart';

class PlayerWindow extends StatelessWidget {
  final String _playerName;

  PlayerWindow(this._playerName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Player Number $_playerName",
          style: Theme.of(context).textTheme.headline4,
        ),
        Expanded(child: PeeveList()),
      ],
    );
  }
}

class PeeveList extends StatelessWidget {
  const PeeveList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: [
        Container(
          width: 300, //width of the listview
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Peeve("CAN'T HARDLY WAIT");
              }),
        )
      ],
    );
  }
}

class Peeve extends StatelessWidget {

  static Map<String, String> _peeveDescription = {
    "CAN'T HARDLY WAIT" : "Use to take one extra action right away whether it's your turn or not (play a card, draw cards, or annoy), then the interrupted player continues.",
    "AIN'T SO" : "Use when an opponent tries to use a card's power. That power is cancled for this turn."
    //etc
  };

  final String _name;

  Peeve(this._name);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Card(
        color: Colors.grey[100],
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Icon(Icons.account_box),
          title: Text(_name),
          subtitle: (_peeveDescription.containsKey(_name)) ? Text(_peeveDescription[_name]) : null,
        ),
      ),
    );
  }
}
