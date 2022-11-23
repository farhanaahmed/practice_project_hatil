import 'package:flutter/material.dart';

class DiscoverSingleProduct extends StatelessWidget {
 String productImage;
 String productTitle;
 String numberOfProducts;
  DiscoverSingleProduct(this.productImage, this.productTitle, this.numberOfProducts){
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              productImage,
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            productTitle,
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
            numberOfProducts + " items",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
/*
 Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            productImage,
                            height: 140,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          productTitle,
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
                          "numberOfProducts"+" items",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
 */
