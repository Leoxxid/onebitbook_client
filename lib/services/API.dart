import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "http://localhost:3000";

class API {
  static Future getBooks() {
    var url = baseUrl + "/books";
    return http.get(url);
  }
}