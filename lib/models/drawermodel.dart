import 'package:flutter/cupertino.dart';

class DrawerModel{
  String? text;
  String?image;
  int?id;
  DrawerModel(this.text,this.image,this.id,

      );
  DrawerModel.fromJson(Map<String, dynamic> json) {
    text = json["text"];
    image=json["image"];
    id = json["id"];

  }
}