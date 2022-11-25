import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_project_hatil/module/home/controller/home_controller.dart';
import 'package:practice_project_hatil/module/home/data/model/discover_product_response.dart';
import 'package:practice_project_hatil/module/home/ui/discover_single_product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController _homeController = HomeController();

  @override
  initState() {
    super.initState();
    _homeController.getDiscoverProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Discover",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            StreamBuilder<DiscoverProductResponse?>(
              stream: _homeController.discoverProductSubject.stream,
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data != null) {
                  return _getDiscoverProductWidget(snapshot.data!.products);
                } else {
                  return Center(
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _getDiscoverProductWidget(List<Product> discoverProductList) {
    return Container(
      height: 200,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: discoverProductList.length,
          itemBuilder: (BuildContext context, int index) {
            return DiscoverSingleProduct(
              product: discoverProductList[index],
            );
          }),
    );
  }
}
