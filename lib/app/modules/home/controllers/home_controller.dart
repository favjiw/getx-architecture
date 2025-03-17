import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../data/models/product_model.dart';

class HomeController extends GetxController {
  var products = List<Product>.empty().obs;

  void dialogError(String msg){
    Get.defaultDialog(
      title: "Terjadi Kesalahan",
      content: Text(msg, textAlign: TextAlign.center,),

    );
  }
  void add(String name){
    if (name != '') {
      final date = DateTime.now().toString();
      final data = Product(date, name, date);
      products.add(data);
      Get.back();
    } else {
      dialogError("Semua input harus terisi");
    }
  }

  void delete(String id){
    products.removeWhere((element) => element.id == id);
  }

  void edit(String id, String name){
    final data = findById(id);
    data.name  = name;
    products.refresh();
    Get.back();
  }

  Product findById(String id){
    return products.firstWhere((element) => element.id == id);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
