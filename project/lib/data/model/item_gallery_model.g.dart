// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_gallery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int,
      item: json['item'] as int,
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
      sort_order: json['sort_order'] as int,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'item': instance.item,
      'image': instance.image,
      'sort_order': instance.sort_order,
    };
