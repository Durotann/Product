// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Properties _$PropertiesFromJson(Map<String, dynamic> json) => Properties(
      id: json['id'] as int,
      attribute: json['attribute'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attribute': instance.attribute,
      'title': instance.title,
    };
