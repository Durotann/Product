// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      id: json['id'] as int,
      title: json['title'] as String,
      file: json['file'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'file': instance.file,
      'thumbnail': instance.thumbnail,
    };
