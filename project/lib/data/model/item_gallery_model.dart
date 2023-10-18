// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

import 'image_model.dart';
part 'item_gallery_model.g.dart';

@JsonSerializable()
class Item {
  final int id;
  final int item;
  final Image image;
  final int sort_order;
  Item({
    required this.id,
    required this.item,
    required this.image,
    required this.sort_order,
  });
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
