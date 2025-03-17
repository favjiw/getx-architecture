import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_getx_architecture/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import './item_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.ADD),
            icon: Icon(Icons.add_rounded),
          ),
        ],
      ),
      body: Obx(
        () =>
            controller.products.isEmpty
                ? Center(child: Text('Product is empty'))
                : ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, i) {
                    final data = controller.products[i];
                    return ItemView(data);
                  },
                ),
      ),
    );
  }
}