import 'package:json_annotation/json_annotation.dart';
part 'item_model.g.dart';

@JsonSerializable()
class Item {
  final int id;
  final String title;
  final String price;
  final String image;
  Item({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
  });
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
