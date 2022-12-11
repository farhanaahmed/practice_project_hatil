import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_project_hatil/module/home/data/model/product_response.dart';

class TrendingSingleProduct extends StatelessWidget {
  Product product;
  TrendingSingleProduct({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  product.image,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                  errorBuilder: (context, _, _1) {
                    return Container(
                      height: 80,
                      width: 80,
                    );
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80,
                    child: Text(
                      product.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "\$ ${product.price}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                //padding: EdgeInsets.symmetric(vertical: 30),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.blueGrey,
                  child: Text(
                    "Shop",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 1,
                width: 100,
              ),
              Expanded(
                child: Container(
                  height: 1,
                  color: Colors.grey.shade300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*
Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              product.image,
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ ${product.price}",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
*/
