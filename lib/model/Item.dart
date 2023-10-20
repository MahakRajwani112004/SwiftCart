import 'package:flutter/foundation.dart';

class Item {
  final String img, text, price, rating, desc;
  Item({
    required this.img,
    required this.text,
    required this.price,
    required this.rating,
    required this.desc,
  });
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      img: json['img'] ?? '',
      text: json['text'] ?? '',
      price: json['price'] ?? '',
      rating: json['rating'] ?? '',
      desc: json['desc'] ?? '',
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'img': img,
      'text': text,
      'price': price,
      'rating': rating,
    };
  }
}
