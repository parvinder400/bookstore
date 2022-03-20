import 'package:flutter/material.dart';
import 'package:flutterassignment/app/consts/const.dart';
import 'package:flutterassignment/app/controllers/cart_controller.dart';
import 'package:flutterassignment/app/views/pages/books_page.dart';
import 'package:flutterassignment/app/views/pages/novels_page.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: purple,
          title: const Text('Books Store'),
          bottom: const TabBar(
            // controller: _tabcontroller,
            tabs: [
              Tab(
                child: const Text("Books"),
              ),
              Tab(
                  child: const Text(
                "Novels",
              )),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: Stack(
          children: [
            TabBarView(children: [TabOneScreen(), TabTwoScreen()]),
            Align(
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/cartscreen');
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
                      Obx(() => Text(cartController.product.length.toString())),
                      const Text(
                        'CHECKOUT',
                      ),
                      const Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
