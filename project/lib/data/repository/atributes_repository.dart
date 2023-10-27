import 'package:dio/dio.dart';

import 'package:project/data/model/atribute_model.dart';

class AtributeRepository {
  final dio = Dio();
  Future getData() async {
    Response response =
        await dio.get("https://api.altyn-kovri.ru/api/frontend/attributes/");

    List body = response.data;
    List<AtributModel> result = [];
    for (int i = 0; i < body.length; i++) {
      result.add(AtributModel.fromJson(body[i]));
    }

    return result;
  }
}
