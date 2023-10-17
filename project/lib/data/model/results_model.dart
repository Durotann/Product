import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';
part 'results_model.g.dart';

@JsonSerializable()
class Result {
  final int id;
  final String title;
  final String price;

  final int? sale_price;
  final String image;
  final String carpet_type;
  Result({
    required this.id,
    required this.title,
    required this.price,
    required this.sale_price,
    required this.image,
    required this.carpet_type,
  });
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
