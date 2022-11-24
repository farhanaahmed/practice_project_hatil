import 'package:practice_project_hatil/module/home/data/repository/home_repo.dart';

void main() async{
  var homeRepo = HomeRepo();
  await homeRepo.getDiscoverProduct();
}
