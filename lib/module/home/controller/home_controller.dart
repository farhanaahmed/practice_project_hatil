import 'package:practice_project_hatil/module/home/data/model/discover_product_response.dart';
import 'package:practice_project_hatil/module/home/data/repository/home_repo.dart';
import 'package:rxdart/subjects.dart';

class HomeController {
  HomeRepo _homeRepo = HomeRepo();

  BehaviorSubject<DiscoverProductResponse?> discoverProductSubject =
      BehaviorSubject<DiscoverProductResponse>();

  void getDiscoverProduct() async{
    DiscoverProductResponse discoverProductResponse = await _homeRepo
        .getDiscoverProduct();
    discoverProductSubject.sink.add(discoverProductResponse);
  }


}