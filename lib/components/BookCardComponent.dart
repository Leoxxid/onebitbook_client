import 'package:flutter/material.dart';
enum ConfirmAction { CANCEL, ACCEPT }

class BookCardComponent extends StatelessWidget {
  final edit = 'Editar';
  final delete = 'Deletar';

  _updateBook() {}

 
  Future<ConfirmAction> _asyncDeleteBook(BuildContext context) async {
    return showDialog<ConfirmAction>(
      context: context,
      barrierDismissible: false, // user must tap button for close dialog!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete book?'),
          content: const Text(
              'This will destroy this book'),
          actions: <Widget>[
            FlatButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop(ConfirmAction.CANCEL);
              },
            ),
            FlatButton(
              child: const Text('ACCEPT'),
              onPressed: () {
                Navigator.of(context).pop(ConfirmAction.ACCEPT);
              },
            )
          ],
        );
      },
    );
  }

  _showBookDetails(context) {
    Navigator.pushNamed(context, '/bookDetail');
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: new InkWell(
      onTap: () {
        _showBookDetails(context);
      },
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
                  onPressed: () {_asyncDeleteBook(context);},
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
