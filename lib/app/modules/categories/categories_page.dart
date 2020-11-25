import 'package:flutter/material.dart';
import 'package:twitch_tv/app/modules/categories/models/category_model.dart';
import 'package:twitch_tv/app/modules/categories/widgets/category_item_widget.dart';

class CategoriesPage extends StatefulWidget {
  CategoriesPage({Key key}) : super(key: key);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final categories = [
    CategoryModel(
      name: "Tom Clancy`s",
      views: "10,3 mil",
      photoURL: "https://images.alphacoders.com/487/487868.jpg",
    ),
    CategoryModel(
      name: "Tom Clancy`s",
      views: "10,3 mil",
      photoURL: "https://images.alphacoders.com/487/487868.jpg",
    ),
    CategoryModel(
      name: "Tom Clancy`s",
      views: "10,3 mil",
      photoURL: "https://images.alphacoders.com/487/487868.jpg",
    ),
    CategoryModel(
      name: "Tom Clancy`s",
      views: "10,3 mil",
      photoURL: "https://images.alphacoders.com/487/487868.jpg",
    ),
    CategoryModel(
      name: "Tom Clancy`s",
      views: "10,3 mil",
      photoURL: "https://images.alphacoders.com/487/487868.jpg",
    ),
    CategoryModel(
      name: "Tom Clancy`s",
      views: "10,3 mil",
      photoURL: "https://images.alphacoders.com/487/487868.jpg",
    ),
    CategoryModel(
      name: "Tom Clancy`s",
      views: "10,3 mil",
      photoURL: "https://images.alphacoders.com/487/487868.jpg",
    ),
    CategoryModel(
      name: "Tom Clancy`s",
      views: "10,3 mil",
      photoURL: "https://images.alphacoders.com/487/487868.jpg",
    ),
    CategoryModel(
      name: "Tom Clancy`s",
      views: "10,3 mil",
      photoURL: "https://images.alphacoders.com/487/487868.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Categorias Sugeridas",
              style: TextStyle(
                color: Colors.grey[500],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) => CategoryItemWidget(
                      title: categories[index].name,
                      subtitle: categories[index].views,
                      photoURL: categories[index].photoURL,
                      isOnline: categories[index].isOnline,
                    )),
          ),
        ],
      ),
    );
  }
}
