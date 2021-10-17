import 'package:flutter/material.dart';
import 'package:quiz_app_screen/style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List productTitle = [
      "Men's\nFuelCell Echo",
      "Men's\nFuelCell Rebel",
      "Side blocks\n1200",
      "Men's\nFuelCell Echo",
      "Men's\nFuelCell Rebel",
    ];
    List productCategory = [
      'Men',
      'Men',
      'Men',
      'Woman',
      'Men',
    ];
    List productPrice = [
      '99.99',
      '129.99',
      '139.99',
      '149.99',
      '129.99',
    ];

    List productImages = [
      'assets/images/p1.png',
      'assets/images/p2.png',
      'assets/images/p3.jpg',
      'assets/images/p1.png',
      'assets/images/p2.png',
    ];
    return SizedBox(
      height: 1000,
      child: ListView.builder(
        itemCount: productTitle.length,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(productImages[index]))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productTitle[index],
                          style: productTitleStyle,
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          productCategory[index],
                          style: categoryStyle,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.black, size: 16),
                            Icon(Icons.star, color: Colors.black, size: 14),
                            Icon(Icons.star, color: Colors.black, size: 15),
                            Icon(Icons.star, color: Colors.black, size: 15),
                            Icon(Icons.star, color: Colors.black, size: 15),
                          ],
                        ),
                        Text(
                          '\$${productPrice[index]}',
                          style: priceStyle,
                        ),
                        // Stack(
                        //   alignment: Alignment.bottomRight,
                        //   fit: StackFit.loose,
                        //   overflow: Overflow.visible,
                        //   clipBehavior: Clip.hardEdge,
                        //   children: [
                        //     Positioned(
                        //         right: 10,
                        //         bottom: 10,
                        //         child: Chip(
                        //             label: Icon(Icons.shopping_cart_outlined)))
                        //   ],
                        // )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
