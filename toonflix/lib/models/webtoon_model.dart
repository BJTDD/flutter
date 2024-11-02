import 'package:flutter/material.dart';

class WebtoonModel {
  final String title, thumbnail, id;

// 클래스 named 생성자
  WebtoonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumbnail = json['thumb'],
        id = json['id'];
}
