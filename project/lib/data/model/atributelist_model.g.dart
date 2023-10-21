// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atributelist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AtributList _$AtributListFromJson(Map<String, dynamic> json) => AtributList(
      atributlist: (json['atributlist'] as List<dynamic>)
          .map((e) => AtributModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AtributListToJson(AtributList instance) =>
    <String, dynamic>{
      'atributlist': instance.atributlist,
    };
