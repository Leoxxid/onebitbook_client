import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  final messageEmptyInput = 'Você precisa preencher este campo...';
  final hint;
  final label;

  InputComponent(this.hint, this.label) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            labelText: label,
          ),
          validator: (value) {
            if (value.isEmpty) {
              return messageEmptyInput;
            }
            return null;
          },
        ));
  }
}
