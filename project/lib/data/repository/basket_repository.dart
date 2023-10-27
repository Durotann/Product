// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PostRepository {
  final dio = Dio();
//First request
  Future getAddData(variation_id, product_id) async {
    //Initialize SharedPreference
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final cartId = prefs.getString('card_id');

    final data = {
      'item_variant': variation_id,
      'product': product_id,
      'quantity': 1
    };
    //We check whether it is empty or not by the key
    if (cartId != null) {
      data['cart_id'] = cartId;
    }
    Response response = await dio
        .post("https://api.altyn-kovri.ru/api/cart/add-cart-line/", data: data);

    var body = response.data;
    print(body);
    if (cartId == null) {
      await prefs.setString('card_id', "${body['id']}");
    }

    return body;
  }

//Other request
  Future getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final cartId = prefs.getString('card_id');

    Response response =
        await dio.get("https://api.altyn-kovri.ru/api/cart/$cartId/");

    var body = response.data;

    return body;
  }
}
