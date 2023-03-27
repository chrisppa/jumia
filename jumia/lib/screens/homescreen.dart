import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final urlImages = [
    'https://images.unsplash.com/photo-1576072446584-4955dfe17b86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw5eXE2aFpZQWpHc3x8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1613332098721-054a53462d12?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFtcGVycyUyMGluJTIwc3VwZXJtYXJrZXR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://media.istockphoto.com/id/611065190/photo/yellow-sport-shoes.jpg?s=612x612&w=0&k=20&c=sL_6P3UcgbkPdS4GZohK_-gZjkaPrzP_EZ2mg47-NnY=',
    'https://media.istockphoto.com/id/1194439772/photo/stylish-woman-in-pink-wide-legs-trousers-sneakers-and-striped-blouse-is-posing-on-one-leg.jpg?s=612x612&w=0&k=20&c=2TOwHd33A8QSaX723m3TkmX-GS0tvCqiOXr3vj-3OuA=',
    'https://media.istockphoto.com/id/915923400/photo/blue-mens-jeans-denim-pants-on-orange-background-contrast-saturated-color-fashion-clothing.jpg?s=612x612&w=0&k=20&c=LIs2Ac-KecXApk44opa0rlOATq4LHkl7efxspHUcftU=',
    'https://media.istockphoto.com/id/1295633127/photo/grilled-chicken-meat-and-fresh-vegetable-salad-of-tomato-avocado-lettuce-and-spinach-healthy.jpg?s=612x612&w=0&k=20&c=Qa3tiqUCO4VpVMQDXLXG47znCmHr_ZIdoynViJ8kW0E=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: Text(
          'Jumia',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(color: Colors.orange[50]),
            child: Center(
                child: Text(
              'Free Shipping Nationwide',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          Container(
            child: CarouselSlider.builder(
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                )),
          ),
        ],
      ),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Image.network(urlImage),
    );
  }
}
