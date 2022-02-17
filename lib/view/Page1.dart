import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/controllers/productsController.dart';
import 'package:testapp/view/Page2.dart';

class Page1 extends GetWidget<ProductsController> {
  final ProductsController productsController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          IconButton(onPressed: ()=>Get.to(Page2(products: productsController.products.value,)), icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: const Text("total count"),
            trailing: Text(controller.totalCount.value.toString()),
          ),
          ListTile(
            title: const Text("average price"),
            trailing: Text(controller.averagePrice.value.toString()),
          ),
          ListTile(
            title: const Text("number of returns"),
            trailing: Text(controller.numberOfReturns.value.toString()),
          ),
        ],
      ),
    );
  }
}
