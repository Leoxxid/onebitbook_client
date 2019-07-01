import 'dart:async';
import 'package:http/http.dart' as http;

class Repository {
  Future<http.Response> getBooks() {
    return http.get('http://localhost:3000/books');
  }
}
