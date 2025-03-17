import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddController extends GetxController {
  late TextEditingController name;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    name = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
