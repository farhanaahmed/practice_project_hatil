import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:practice_project_hatil/module/home/data/model/product_response.dart';

class HomeRepo {
  final Dio _dio = Dio();
  Future<ProductResponse> getDiscoverProduct() async {
    try {
      final discoverResponse =
          await _dio.get('https://raw.githubusercontent.com/AliAkberAakash'
              '/hatil_demo_api/main/discover_products.json');
      print(discoverResponse);
      return ProductResponse.fromJson(jsonDecode(discoverResponse.data));
    } catch (e) {
      print(e);
    }
    return ProductResponse();
  }

  Future<ProductResponse> getTrendingProduct() async {
    try {
      final trendingResponse = await _dio.get('https://raw.githubusercontent'
          '.com/AliAkberAakash/hatil_demo_api/main/trending_products.json');
      print(trendingResponse);
      return ProductResponse.fromJson(jsonDecode(trendingResponse.data));
    } catch (e) {
      print(e);
    }
    return ProductResponse();
  }
}
