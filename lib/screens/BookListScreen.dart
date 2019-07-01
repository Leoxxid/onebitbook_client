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
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              position.toString(),
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        );
      },
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
