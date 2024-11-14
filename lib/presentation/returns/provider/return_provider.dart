import 'package:flutter/material.dart';

class ReturnProvider with ChangeNotifier {
  // Lists to hold dynamic item data
  List<Map<String, dynamic>> items = [
    {
      'partNumber': '',
      'quantity': '1',
      'reason': 'Not required',
    }
  ];

  void addItem() {
    items.add({
      'partNumber': '',
      'quantity': '1',
      'reason': 'Not required',
    });
    notifyListeners();
  }

  void setQuantity({required String category, required int index}) {
    items[index]['quantity'] = category;
    notifyListeners();
  }

  void setReason({required String category, required int index}) {
    items[index]['reason'] = category;
    notifyListeners();
  }

  void setPartNumber({required String partNumber, required int index}) {
    items[index]['partNumber'] = partNumber;
    notifyListeners();
  }
}
