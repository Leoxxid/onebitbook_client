import 'package:flutter/material.dart';

class BookListScreen extends StatelessWidget {
  final titleScreen = "Lista de Livros";

  void _navigateToRegisterBook(context) {
    Navigator.pushNamed(context, '/registerBook');
  }

  buildFloatButtonRegisterBook(context) {
    return FloatingActionButton(
      onPressed: () {
        _navigateToRegisterBook(context);
      },
      child: Icon(Icons.add),
    );
  }

  buildListOfBooks(context) {
    return ListView(
      children: <Widget>[
        Text("Titulo"),
        Text("Titulo"),
        Text("Titulo"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleScreen),
      ),
      body: Center(child: buildListOfBooks(context)),
      floatingActionButton: buildFloatButtonRegisterBook(context),
    );
  }
}
