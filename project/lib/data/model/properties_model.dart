import 'package:json_annotation/json_annotation.dart';
part 'properties_model.g.dart';

@JsonSerializable()
class Properties {
  final int id;
  final String attribute;
  final String title;
  Properties({
    required this.id,
    required this.attribute,
    required this.title,
  });
  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
  Map<String, dynamic> toJson() => _$PropertiesToJson(this);
}
