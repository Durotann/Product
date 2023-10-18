import 'package:json_annotation/json_annotation.dart';
part 'image_model.g.dart';

@JsonSerializable()
class Image {
  final int id;
  final String title;
  final String file;
  final String thumbnail;

  Image({
    required this.id,
    required this.title,
    required this.file,
    required this.thumbnail,
  });
  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}
