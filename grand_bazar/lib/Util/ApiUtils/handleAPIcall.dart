import 'dart:convert';

import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grand_bazar/Models/bazarEvents.dart';

class HandleAPIcall {
  static late final List<BazarEvents> bazarevents;

  static Future<List<BazarEvents>> getAllevents(String url) async {
    // String url = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(Uri.parse(url));
    print(json.decode(response.body));

    bazarevents = json.decode(response.body) as List<BazarEvents>;
    return bazarevents;
  }
}
