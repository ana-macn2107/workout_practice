import 'package:charles_design/providers/pending_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class PendingItems with ChangeNotifier {
  List<PendingItem> _items = [
    PendingItem(
        title: 'Llamada Pendiente',
        description: 'Solicitud',
        date: DateTime.now(),
        time: DateTime.now())
  ];

  List<PendingItem> get items {
    return [..._items];
  }
}
