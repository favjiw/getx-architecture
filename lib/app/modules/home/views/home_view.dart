import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_architecture/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Product'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Get.toNamed()
          }, icon: Icon(Icons.add_rounded))
        ],
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
