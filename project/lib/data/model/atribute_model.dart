// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:project/data/model/propet_atribute_model.dart';
part 'atribute_model.g.dart';

@JsonSerializable()
class AtributModel {
  final String title;
  final String query_arg;
  final List<AtributeProperties> properties;
  AtributModel({
    required this.title,
    required this.query_arg,
    required this.properties,
  });
  factory AtributModel.fromJson(Map<String, dynamic> json) =>
      _$AtributModelFromJson(json);
  Map<String, dynamic> toJson() => _$AtributModelToJson(this);
}
