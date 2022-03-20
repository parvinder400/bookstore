import 'package:flutter/material.dart';
import 'package:flutterassignment/app/controllers/cart_controller.dart';
import 'package:flutterassignment/app/models/items_model.dart';
import 'package:get/get.dart';

class CustomNovelsUI extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  CustomNovelsUI({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 200,
          height: 400,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '₹${ItemsModel.novels[index].amount.toString()}',
                      // '₹ Amount',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                        ItemsModel.novels[index].img,
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      ItemsModel.novels[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Divider(
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    cartController.addItem(ItemsModel.novels[index]);
                  },
                  child: Container(
                    child: Center(
                        child: Text(
                      'Add to Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
