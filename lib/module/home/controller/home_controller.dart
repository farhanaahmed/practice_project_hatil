import 'package:practice_project_hatil/module/home/data/model/product_response.dart';
import 'package:practice_project_hatil/module/home/data/repository/home_repo.dart';
import 'package:rxdart/subjects.dart';

class HomeController {
  HomeRepo _homeRepo = HomeRepo();

  BehaviorSubject<ProductResponse?> discoverProductSubject =
      BehaviorSubject<ProductResponse>();

  BehaviorSubject<ProductResponse?> trendingProductSubject =
      BehaviorSubject<ProductResponse>();

  void getDiscoverProduct() async {
    ProductResponse discoverProductResponse =
        await _homeRepo.getDiscoverProduct();
    discoverProductSubject.sink.add(discoverProductResponse);
  }

  void getTrendingProduct() async {
    ProductResponse trendingProductResponse =
        await _homeRepo.getTrendingProduct();
    trendingProductSubject.sink.add(trendingProductResponse);
  }

}
