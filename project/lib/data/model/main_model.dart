// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';
import 'package:project/data/model/results_model.dart';
part 'main_model.g.dart';

@JsonSerializable()
class Product {
  final String? next;
  final String? previous;
  final int count;
  final int page_number;
  final List<dynamic> pages;
  final List<Result> results;
  Product({
    required this.next,
    this.previous,
    required this.count,
    required this.page_number,
    required this.pages,
    required this.results,
  });
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
