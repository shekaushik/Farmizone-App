import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/category_item.dart';
import '../controllers/category_controller.dart';

class CategoryView extends GetView<CategoryController> {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category', style: context.theme.textTheme.headline3),
        centerTitle: true,
      ),

      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
          children: controller.categories.map((category) {
            return CategoryItem(category: category);
          }).toList(),
      ),

    );
  }
}

