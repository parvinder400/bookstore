import 'package:flutter/material.dart';
import 'package:flutterassignment/app/controllers/cart_controller.dart';
import 'package:flutterassignment/app/models/items_model.dart';
import 'package:get/get.dart';

class CustomItemsUI extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  CustomItemsUI({Key? key, required this.index}) : super(key: key);

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
                      '₹${ItemsModel.books[index].amount.toString()}',
                      // '₹ Amount',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.network(
                        ItemsModel.books[index].img,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      ItemsModel.books[index].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )),
                const Divider(
                  color: Colors.black,
                ),
                InkWell(
                  onTap: () {
                    cartController.addItem(ItemsModel.books[index]);
                  },
                  child: const Center(
                      child: Text(
                    'Add to Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
                ),
              ],
            ),
          )),
    );
  }
}
