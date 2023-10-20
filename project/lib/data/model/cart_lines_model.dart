// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:project/data/model/item_gallery_model.dart';
part 'cart_lines_model.g.dart';

@JsonSerializable()
class CartLines {
  final int id;
  final Item item;
  CartLines({
    required this.id,
    required this.item,
  });
  factory CartLines.fromJson(Map<String, dynamic> json) =>
      _$CartLinesFromJson(json);
  Map<String, dynamic> toJson() => _$CartLinesToJson(this);
}
