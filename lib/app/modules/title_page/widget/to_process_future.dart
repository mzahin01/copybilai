import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget.dart';

class OnTopNavBar extends StatelessWidget {
  const OnTopNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 245, 241, 241),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green), // Define the border
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
    );
  }
}

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 500,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.science,
                    size: 80,
                  ),
                  const Text("SCIENCE • LEVEL 3 >"),
                  const Text(
                    "3.1 Quantum \nMechanics with Sabine",
                    style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(height: 7, width: 140, color: Colors.green),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      "Discover the fundamental machinery of quantum \nmechanics"),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Icon(Icons.add_box),
                      SizedBox(
                        width: 6,
                      ),
                      Text("6 Lessons")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
