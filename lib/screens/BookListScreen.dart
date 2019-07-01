import 'package:flutter/material.dart';
import 'package:onebitbook_client/components/BookListComponent.dart';
import 'package:onebitbook_client/components/ButtonGoToRegisterBookComponent.dart';

class BookListScreen extends StatelessWidget {
  final titleScreen = "Lista de Livros";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleScreen),
      ),
      body: Center(child: BookListComponent()),
      floatingActionButton: ButtonGoToRegisterBookComponent(),
    );
  }
}
