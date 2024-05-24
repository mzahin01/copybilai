import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/title_page_controller.dart';
import '../widget/to_process_future.dart';

class TitlePageView extends GetView<TitlePageController> {
  const TitlePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const OnTopNavBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(155, 50, 50, 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Courses  ›  Science",
                          style: TextStyle(fontSize: 17)),
                      SizedBox(
                        height: 50,
                      ),
                      CourseCard(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: SizedBox(
                    height: Get.height,
                    child: SingleChildScrollView(
                        child: Container(
                      height: 2000,
                      width: Get.width / 2.5,
                      color: Colors.black12,
                    )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
