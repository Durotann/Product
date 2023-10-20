// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:project/data/model/cart_lines_model.dart';
part 'basket_model.g.dart';

@JsonSerializable()
class BasketItem {
  final int id;
  final String total_amount;
  final int total;
  final List<CartLines> cart_lines;
  BasketItem({
    required this.id,
    required this.total_amount,
    required this.total,
    required this.cart_lines,
  });
  factory BasketItem.fromJson(Map<String, dynamic> json) =>
      _$BasketItemFromJson(json);
  Map<String, dynamic> toJson() => _$BasketItemToJson(this);
}
