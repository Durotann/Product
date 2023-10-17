// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      next: json['next'] as String,
      previous: json['previous'] as String?,
      count: json['count'] as int,
      page_number: json['page_number'] as int,
      pages: json['pages'] as List<dynamic>,
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
      'count': instance.count,
      'page_number': instance.page_number,
      'pages': instance.pages,
      'results': instance.results,
    };
