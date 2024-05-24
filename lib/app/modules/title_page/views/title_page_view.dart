import 'package:copybilai/app/modules/title_page/widget/widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/title_page_controller.dart';

class TitlePageView extends GetView<TitlePageController> {
  const TitlePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 75,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: Get.width / 17,
                  ),
                  SizedBox(
                    height: Get.width / 20,
                    width: Get.width / 10,
                    child: Image.asset("Assets/copyBilailogo.png"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Module(
                    widgName: 'Home',
                    wayString: '/home',
                    iconman: Icons.home,
                  ),
                  const Module(
                    widgName: 'Courses',
                    wayString: '/home',
                    iconman: Icons.line_style,
                  ),
                  const Module(
                    widgName: 'Classroom',
                    wayString: '/home',
                    iconman: Icons.menu_book,
                  ),
                  SizedBox(
                    width: Get.width / 25,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 25, 12),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          prefixIcon:
                              const Icon(Icons.search, color: Colors.black),
                          filled: true,
                          fillColor: const Color.fromARGB(255, 245, 241, 241),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.green), // Define the border
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0), // Padding around the text
                      child: Text(
                        "GO PREMIUM",
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Text(
                    "2",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.electric_bolt_outlined),
                  SizedBox(
                    width: Get.width / 40,
                  ),
                  const Icon(Icons.list),
                  SizedBox(
                    width: Get.width / 12.6,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
