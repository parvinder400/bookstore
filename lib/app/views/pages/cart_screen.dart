import 'package:flutter/material.dart';
import 'package:flutterassignment/app/consts/const.dart';
import 'package:flutterassignment/app/controllers/cart_controller.dart';
import 'package:flutterassignment/app/models/items_model.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  final CartController controller = Get.find();
  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: Stack(
        children: [
          Obx(
            () => ListView.builder(
              itemCount: controller.product.length,
              itemBuilder: (BuildContext context, int index) {
                return CartProductCard(
                  controller: controller,
                  product: controller.product.keys.toList()[index],
                  quantity: controller.product.values.toList()[index],
                  index: index,
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        title: Text(''),
                        content:
                            Text('Your order has been placed Successfully'),
                        actions: [
                          FlatButton(
                            textColor: Colors.black,
                            onPressed: () {
                              Get.offAllNamed('/');
                            },
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    });
                // AlertDialog(
                //   title: const Text(''),
                //   content:
                //       const Text('Your order has been placed Successfully'),
                //   actions: [
                // FlatButton(
                //   textColor: Colors.black,
                //   onPressed: () {},
                //   child: Text('Ok'),
                // ),
                //   ],
                // );
              },
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF267d6d)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => Text(controller.product.length.toString())),
                  Text(
                    'Done',
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final ItemsModel product;
  final int quantity;
  final int index;
  const CartProductCard(
      {Key? key,
      required this.controller,
      required this.index,
      required this.product,
      required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultpadding),
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          )),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultpadding + 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  '₹ ${product.amount}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              controller.removeProduct(product);
            },
            child: Padding(
              padding: const EdgeInsets.all(defaultpadding + 2),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Remove',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
