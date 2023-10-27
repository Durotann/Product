// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      id: json['id'] as int,
      title: json['title'] as String?,
      price: json['price'] as String?,
      sale_price: json['sale_price'] as int?,
      image: json['image'] as String?,
      carpet_type: json['carpet_type'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'sale_price': instance.sale_price,
      'image': instance.image,
      'carpet_type': instance.carpet_type,
    };
