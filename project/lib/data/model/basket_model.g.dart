// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasketItem _$BasketItemFromJson(Map<String, dynamic> json) => BasketItem(
      id: json['id'] as int,
      total_amount: json['total_amount'] as String,
      total: json['total'] as int,
      cart_lines: (json['cart_lines'] as List<dynamic>)
          .map((e) => CartLines.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BasketItemToJson(BasketItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_amount': instance.total_amount,
      'total': instance.total,
      'cart_lines': instance.cart_lines,
    };
