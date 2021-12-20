import 'dart:convert';

import 'package:flutter/foundation.dart';
//import 'package:http/http.dart' as http;

class PendingItem with ChangeNotifier {
  final String title;
  final String description;
  final DateTime date;
  final DateTime time;

  PendingItem({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  });
}
