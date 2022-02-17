import 'dart:convert';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:testapp/models/product.dart';
import 'package:flutter/services.dart' show rootBundle;

class ProductsController extends GetxController {
  Rx<RxList<Product>> products = RxList<Product>().obs;
  final formatCurrency = new NumberFormat.simpleCurrency();

  //total count, average price and number of returns
  RxInt totalCount = 0.obs, numberOfReturns = 0.obs;
  RxDouble averagePrice = 0.0.obs;

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('images/orders.json');
    final data = await json.decode(response);
    data.forEach((element) {
      products.value.add(Product.fromJson(element));
    });
    products.value.forEach((element) {
      averagePrice.value += double.parse(element.price.split('\$')[1].replaceAll(",", ""));
      if(element.status == "RETURNED") numberOfReturns.value++;
    });
    totalCount.value = products.value.length;
    averagePrice.value = (averagePrice.value)/totalCount.value;
  }

  @override
  void onInit() {
    readJson();
    super.onInit();
  }
}
