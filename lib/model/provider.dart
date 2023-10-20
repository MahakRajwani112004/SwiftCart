import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myecom/model/Item.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ItemProvider extends ChangeNotifier {
  List<Item> cartItems = [];
  List<Item> get _items => cartItems;

  Future<void> init() async {
    await loadBookmarks();
  }

  Future<void> loadBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    final savedBookmarks = prefs.getStringList('_items') ?? [];

    cartItems = savedBookmarks.map((jsonString) {
      final Map<String, dynamic> bookMap = json.decode(jsonString);
      return Item.fromJson(bookMap);
    }).toList();

    notifyListeners();
  }

  Future<void> saveBookmarks() async {
    final prefs = await SharedPreferences.getInstance();
    final bookmarkStrings =
        cartItems.map((book) => json.encode(book.toJson())).toList();
    await prefs.setStringList('_items', bookmarkStrings);
  }

  void addBookmark(Item book) {
    cartItems.add(book);
    saveBookmarks(); // Save the updated bookmarks list
    notifyListeners();
  }

  void deleteBookmark(Item book) {
    cartItems.remove(book);
    saveBookmarks(); // Save the updated bookmarks list
    notifyListeners();
  }
}
