import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:practice_project_hatil/module/home/data/model/discover_product_response.dart';

class HomeRepo{
  final Dio _dio = Dio();
  Future<DiscoverProductResponse> getDiscoverProduct() async {
    try {
      var response = await _dio.get('https://raw.githubusercontent'
          '.com/AliAkberAakash/hatil_demo_api/main/trending_products.json');
      print(response);
      return DiscoverProductResponse.fromJson(jsonDecode(response.data));
    } catch (e) {
      print(e);
    }
    return DiscoverProductResponse();
  }
}