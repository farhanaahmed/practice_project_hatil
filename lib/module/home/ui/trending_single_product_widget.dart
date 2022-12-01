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
