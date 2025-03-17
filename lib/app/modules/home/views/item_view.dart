import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ItemView extends GetView {
  const ItemView(this.data);
  final data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(data.name!),
      subtitle: Text(data.createdAt!),
      trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever)),
    );
  }
}
