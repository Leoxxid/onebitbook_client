import 'package:flutter/material.dart';
import 'package:onebitbook_client/screens/BookListScreen.dart';
import 'package:onebitbook_client/screens/BookDetailScreen.dart';
import 'package:onebitbook_client/screens/RegisterBookScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'OnebitBook',
    initialRoute: '/',
    routes: {
      '/': (context) => BookListScreen(),
      '/bookDetail': (context) => BookDetailScreen(),
      '/registerBook': (context) => RegisterBookScreen(),
    },
  ));
}
