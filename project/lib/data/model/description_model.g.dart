// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDescription _$ProductDescriptionFromJson(Map<String, dynamic> json) =>
    ProductDescription(
      properties: (json['properties'] as List<dynamic>)
          .map((e) => Properties.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'] as String,
      description: json['description'] as String,
      item_gallery: (json['item_gallery'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      stock_amount: json['stock_amount'] as int,
      variations: (json['variations'] as List<dynamic>)
          .map((e) => Variation.fromJson(e as Map<String, dynamic>))
          .toList(),
      carpet_type: json['carpet_type'] as String,
    );

Map<String, dynamic> _$ProductDescriptionToJson(ProductDescription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'item_gallery': instance.item_gallery,
      'properties': instance.properties,
      'stock_amount': instance.stock_amount,
      'variations': instance.variations,
      'carpet_type': instance.carpet_type,
    };
