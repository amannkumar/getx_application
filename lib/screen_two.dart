import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Screen 2 alert'),
              subtitle: const Text('Application dialog alert for Screen 2'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete Chat',
                    middleText: 'Are you sure you want leave?',
                    confirm: TextButton(
                      onPressed: () => Get.back(),
                      child: const Text('Ok'),
                    ),
                    cancel: TextButton(
                        onPressed: () => Get.back(),
                        child: const Text('Cancel')));
              },
            ),
          ),
          const Gap(10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.indigoAccent),
            child: TextButton(
                onPressed: () {
                  Get.back();
                  Get.back();
                },
                child: const Text('Go back to home Screen')),
          )
        ],
      ),
    );
  }
}
