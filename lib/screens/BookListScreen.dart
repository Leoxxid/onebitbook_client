import 'package:flutter/material.dart';
import 'package:onebitbook_client/components/BookListComponent.dart';
import 'package:onebitbook_client/components/ButtonGoToRegisterBookComponent.dart';
import 'package:onebitbook_client/services/Repository.dart';

class BookListScreen extends StatefulWidget {
  // final Repository _repository;

  @override
  _BuildListState createState() => _BuildListState();
}

class _BuildListState extends State<BookListScreen> {
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
