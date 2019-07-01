import 'package:flutter/material.dart';

class ButtonRegisterBookComponent extends StatelessWidget {
  void _navigateToRegisterBook(context) {
    Navigator.pushNamed(context, '/registerBook');
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        _navigateToRegisterBook(context);
      },
      child: Icon(Icons.add),
    );
  }
}
