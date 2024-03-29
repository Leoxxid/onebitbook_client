import 'package:flutter/material.dart';
import 'package:onebitbook_client/components/InputComponent.dart';
import 'package:onebitbook_client/components/ButtonRegisterBookComponent.dart';

class RegisterBookScreen extends StatefulWidget {
  @override
  RegisterBookScreenState createState() {
    return RegisterBookScreenState();
  }
}

class RegisterBookScreenState extends State<RegisterBookScreen> {
  final registerBook = "Cadastre um Livro";

  final typeTheNameOfAuthor = "Digite o nome do Autor";
  final nameOfTheAuthor = "Nome do Autor";

  final typeTheNameOfBook = "Digite o nome do Livro";
  final nameOfTheBook = "Nome do Livro";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(registerBook),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 32.0,
          ),
          child: Column(
            children: [
              InputComponent(typeTheNameOfAuthor, nameOfTheAuthor),
              InputComponent(typeTheNameOfBook, nameOfTheBook),
              ButtonRegisterBookComponent()
            ],
          ),
        ),
      ),
    );
  }
}
