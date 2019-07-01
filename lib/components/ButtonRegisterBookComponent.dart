import 'package:flutter/material.dart';

class ButtonRegisterBookComponent extends StatelessWidget {
  final register = 'Cadastrar';

  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          // Chamar metodo Post
        },
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(register, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
