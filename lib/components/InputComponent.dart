import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  final messageEmptyInput = 'Você precisa preencher este campo...';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value.isEmpty) {
          return messageEmptyInput;
        }
        return null;
      },
    );
  }
}
