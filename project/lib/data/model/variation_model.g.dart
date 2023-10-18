// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Variation _$VariationFromJson(Map<String, dynamic> json) => Variation(
      id: json['id'] as int,
      id_1c: json['id_1c'] as String,
      item: json['item'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      stock_amount: json['stock_amount'] as int,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$VariationToJson(Variation instance) => <String, dynamic>{
      'id': instance.id,
      'id_1c': instance.id_1c,
      'item': instance.item,
      'width': instance.width,
      'height': instance.height,
      'stock_amount': instance.stock_amount,
      'price': instance.price,
    };
