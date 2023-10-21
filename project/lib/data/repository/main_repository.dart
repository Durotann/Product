import 'package:dio/dio.dart';

import '../model/main_model.dart';

class Repository {
  final dio = Dio();
  Future getData({arg1 = "", arg2 = ""}) async {
    Response response = await dio
        .get("https://api.altyn-kovri.ru/api/frontend/items?${arg1}=${arg2}");
    var body = response.data;

    return Product.fromJson(body);
  }
}
