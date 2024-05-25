import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widget/line.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.calculatePositions();
          },
        ),
        appBar: AppBar(title: const Text("Line Between Widgets")),
        body: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amberAccent,
            ),
            Container(
              color: Colors.amberAccent.withOpacity(0.3),
              height: 300,
              width: 400,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: CustomPaint(
                      key: controller.customPaintKey,
                      size: Size.infinite,
                      painter: LinePainter(
                        key: controller.customPaintKey,
                        points: controller.points,
                        repaint: controller.points.reactive,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 100,
                    child: Container(
                      key: controller.widget1Key,
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                  ),
                  Positioned(
                    left: 200,
                    top: 200,
                    child: Container(
                      key: controller.widget2Key,
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                  ),
                  Positioned(
                    left: 250,
                    top: 100,
                    child: Container(
                      key: controller.widget3Key,
                      width: 50,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.redAccent,
            ),
          ],
        ),
      );
    });
  }
}
