// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_app_screen/screens/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Image(
          image: AssetImage('assets/images/logo.jpg'),
        ),
        title: RichText(
          text: TextSpan(
              text: 'mobi',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: 'sport',
                    style: TextStyle(color: Colors.grey, fontSize: 20))
              ]),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Running',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1,
                      color: Colors.black,
                      fontSize: 27.4,
                    ),
                  ),
                  Text(
                    '15 results',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ProductCard(),
          ],
        ),
      ),
    );
  }
}
