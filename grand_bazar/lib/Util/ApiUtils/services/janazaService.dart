import 'package:grand_bazar/Util/ApiUtils/model/janazaModel.dart';
import 'dart:convert';

import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:grand_bazar/Util/constants/apiurlConstants.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grand_bazar/Models/bazarEvents.dart';

class JanazaService {
  static Future<List<JanazaNews>?> getAllJanazaNews(String tocken) async {
    String token = tocken;

    print("Tocken IS " + token);

    var client = http.Client();

    var uri = Uri.parse(baseUrl + janaza_get_all_url);
    var response =
        await client.get(uri, headers: {'Authorization': 'Bearer $token'});
    if (response.statusCode == 200) {
      final decodeData = jsonDecode(response.body);

      print("decodeData-----------------11111111111111111111---------");
      print(decodeData);

      final rawData = decodeData['data'];
      final encodeData = jsonEncode(rawData);

      print("encodeData------------------2222222222222222222222--------");
      print(encodeData);

      return janazaNewsFromJson(encodeData);
    }
  }
}
