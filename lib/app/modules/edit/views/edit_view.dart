import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    final data = homeController.findById(Get.arguments);
    controller.name.text = data.name;
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Product'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextField(
              autocorrect: false,
              controller: controller.name,
              decoration: InputDecoration(
                labelText: "Product Name",
                hintText: "Input product name here...",
                border: OutlineInputBorder(),
              ),
              onEditingComplete:
                  () => Get.find<HomeController>().edit(Get.arguments, controller.name.text),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.find<HomeController>().edit(Get.arguments, controller.name.text);
              },
              child: Text("Edit Product"),
            ),
          ],
        ),
      ),
    );
  }
}
