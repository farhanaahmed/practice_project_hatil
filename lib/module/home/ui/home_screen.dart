import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_project_hatil/module/home/ui/discover_single_product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index){
                  return  DiscoverSingleProduct('https://images.unsplash'
                      '.com/photo-1598300042247-d088f8ab3a91?ixlib=rb-4.0'
                      '.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8'
                      '&auto=format&fit=crop&w=765&q=80', 'chair', '50');
                }


              ),
            ),
          ],
        ),
      ),
    );
  }
}
