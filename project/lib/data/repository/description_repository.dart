import 'package:dio/dio.dart';
import 'package:project/data/model/description_model.dart';

class RepositoryInformation {
  final dio = Dio();
  Future getData(id) async {
    Response response =
        await dio.get("https://api.altyn-kovri.ru/api/frontend/items/${id}/");
    var body = response.data;

    return ProductDescription.fromJson(body);
  }
}
