import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Module extends StatelessWidget {
  const Module({
    super.key,
    required this.widgName,
    required this.wayString,
    required this.iconman,
  });
  final String widgName;
  final String wayString;
  final IconData iconman;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: IconButton(
        onPressed: () {
          Get.toNamed(wayString);
        },
        icon: Row(
          children: [
            Icon(iconman),
            const SizedBox(width: 5),
            Text(widgName),
          ],
        ),
      ),
    );
  }
}
