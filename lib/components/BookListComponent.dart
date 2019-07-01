import 'package:flutter/material.dart';
import 'package:onebitbook_client/components/BookCardComponent.dart';

class BookListComponent extends StatelessWidget {
  final edit = 'Editar';
  final delete = 'Deletar';

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return BookCardComponent();
      },
    );
  }
}
