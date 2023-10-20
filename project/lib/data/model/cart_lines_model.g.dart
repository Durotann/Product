// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_lines_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartLines _$CartLinesFromJson(Map<String, dynamic> json) => CartLines(
      id: json['id'] as int,
      item: Item.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartLinesToJson(CartLines instance) => <String, dynamic>{
      'id': instance.id,
      'item': instance.item,
    };
