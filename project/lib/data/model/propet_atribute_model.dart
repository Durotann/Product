// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'propet_atribute_model.g.dart';

@JsonSerializable()
class AtributeProperties {
  final String? title;
  final int count;
  AtributeProperties({
    required this.title,
    required this.count,
  });
  factory AtributeProperties.fromJson(Map<String, dynamic> json) =>
      _$AtributePropertiesFromJson(json);
  Map<String, dynamic> toJson() => _$AtributePropertiesToJson(this);
}
