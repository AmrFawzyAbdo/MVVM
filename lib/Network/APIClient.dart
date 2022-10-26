import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sevend/Model/nationality.dart';

class APIClient {
  static Future<Nationality?> getHttp(String name) async {
    try {
      var response = await Dio()
          .get("https://api.nationalize.io?", queryParameters: {"name": name});
      print(response);
      return Nationality.fromJson(json.decode(response.toString()));
    } catch (e) {
      print(e);
    }
  }
}
