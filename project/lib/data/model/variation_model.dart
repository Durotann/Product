import 'package:json_annotation/json_annotation.dart';
part 'variation_model.g.dart';

@JsonSerializable()
class Variation {
  final int id;
  final String id_1c;
  final int item;
  final int width;
  final int height;
  final int stock_amount;
  final double price;

  Variation({
    required this.id,
    required this.id_1c,
    required this.item,
    required this.width,
    required this.height,
    required this.stock_amount,
    required this.price,
  });
  factory Variation.fromJson(Map<String, dynamic> json) =>
      _$VariationFromJson(json);
  Map<String, dynamic> toJson() => _$VariationToJson(this);
}
