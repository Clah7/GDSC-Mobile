// ignore_for_file: prefer_typing_uninitialized_variables, sized_box_for_whitespace, depend_on_referenced_packages, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:news_app/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/data.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/services/slider_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<SliderModel> sliders = [];
  @override
  void initState() {
    categories = getCategories();
    sliders = getSliders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("GDSC", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("News",
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold))
            ],
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 70,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryTile(
                        image: categories[index].image,
                        categoryName: categories[index].categoryName,
                      );
                    }),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, bottom: 4.0, right: 10.0),
                child: Align(
                  // Added Align widget
                  alignment: Alignment.centerLeft, // Added alignment
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Breaking News",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left),
                        Text(
                          "View All",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ]),
                ),
              ),
              CarouselSlider.builder(
                  itemCount: sliders.length,
                  itemBuilder: (context, index, realIndex) {
                    String? res = sliders[index].image;
                    return buildImage(res!, index);
                  },
                  options: CarouselOptions(
                      height: 200,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height)),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0, bottom: 4.0, right: 10.0),
                child: Align(
                  // Added Align widget
                  alignment: Alignment.centerLeft, // Added alignment
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Trending News",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left),
                        Text(
                          "View All",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildImage(String image, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(image,
                fit: BoxFit.cover, width: MediaQuery.of(context).size.width),
          ),
        ],
      ));
}

class CategoryTile extends StatelessWidget {
  final image, categoryName;
  CategoryTile({this.categoryName, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 8, left: 8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                image,
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 120,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.black26,
              ),
              child: Center(
                  child: Text(categoryName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500))),
            )
          ],
        ));
  }
}
