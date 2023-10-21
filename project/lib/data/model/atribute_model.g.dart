// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atribute_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AtributModel _$AtributModelFromJson(Map<String, dynamic> json) => AtributModel(
      title: json['title'] as String,
      query_arg: json['query_arg'] as String,
      properties: (json['properties'] as List<dynamic>)
          .map((e) => AtributeProperties.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AtributModelToJson(AtributModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'query_arg': instance.query_arg,
      'properties': instance.properties,
    };
