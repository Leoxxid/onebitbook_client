import 'package:flutter/material.dart';

class BookCardComponent extends StatelessWidget {
  final edit = 'Editar';
  final delete = 'Deletar';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.book),
            title: Text('Titulo do livro'),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text(edit),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: Text(delete),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
