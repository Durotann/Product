import 'package:dio/dio.dart';

import '../model/main_model.dart';

class Repository {
  final dio = Dio();
  Future getData() async {
    Response response =
        await dio.get("https://api.altyn-kovri.ru/api/frontend/items/");
    var body = response.data;

    return Product.fromJson(body);
  }
}
