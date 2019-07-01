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

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleScreen),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
      floatingActionButton: buildFloatButtonRegisterBook(context),
    );
  }
}
