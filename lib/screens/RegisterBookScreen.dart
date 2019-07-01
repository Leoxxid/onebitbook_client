import 'package:flutter/material.dart';
import 'package:onebitbook_client/components/InputComponent.dart';

class RegisterBookScreen extends StatefulWidget {
  @override
  RegisterBookScreenState createState() {
    return RegisterBookScreenState();
  }
}

class RegisterBookScreenState extends State<RegisterBookScreen> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new Dog'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        color: Colors.black54,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 32.0,
          ),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: InputComponent()),
            ],
          ),
        ),
      ),
    );
  }
}
