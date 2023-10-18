// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:project/data/model/properties_model.dart';

import 'item_gallery_model.dart';
import 'variation_model.dart';
part 'description_model.g.dart';

@JsonSerializable()
class ProductDescription {
  final int id;
  final String title;
  final String price;
  final String description;
  final List<Item> item_gallery;
  final List<Properties> properties;
  final int stock_amount;
  final List<Variation> variations;
  final String carpet_type;
  ProductDescription({
    required this.properties,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.item_gallery,
    required this.stock_amount,
    required this.variations,
    required this.carpet_type,
  });
  factory ProductDescription.fromJson(Map<String, dynamic> json) =>
      _$ProductDescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$ProductDescriptionToJson(this);
}
