import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_getx_architecture/app/modules/home/controllers/home_controller.dart';
import 'package:learn_getx_architecture/app/routes/app_pages.dart';

class ItemView extends GetView<HomeController> {
  const ItemView(this.data);
  final data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Get.toNamed(Routes.EDIT, arguments: data.id!),
      leading: CircleAvatar(),
      title: Text(data.name!),
      subtitle: Text(data.createdAt!),
      trailing: IconButton(onPressed: (){
        controller.delete(data.id!);
      }, icon: Icon(Icons.delete_forever)),
    );
  }
}
