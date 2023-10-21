// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:project/data/model/atribute_model.dart';
part 'atributelist_model.g.dart';

@JsonSerializable()
class AtributList {
  final List<AtributModel> atributlist;
  AtributList({
    required this.atributlist,
  });
  factory AtributList.fromJson(Map<String, dynamic> json) =>
      _$AtributListFromJson(json);
  Map<String, dynamic> toJson() => _$AtributListToJson(this);
}
