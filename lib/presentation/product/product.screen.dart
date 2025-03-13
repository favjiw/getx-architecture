import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/product.controller.dart';

class ProductScreen extends GetView<ProductController> {
  const ProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProductScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
