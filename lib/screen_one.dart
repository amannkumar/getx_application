import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_application/screen_two.dart';

// ignore: must_be_immutable
class ScreenOne extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  var name;
  ScreenOne({super.key, this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_interpolation_to_compose_strings
        title: Text('Screen One ' + Get.arguments['name']),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Screen 1 Dialog alert'),
              subtitle: const Text('Application dialog alert for Screen 1'),
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
                color: Colors.greenAccent),
            child: TextButton(
                onPressed: () {
                  Get.to(const ScreenTwo());
                },
                child: const Text('Go to Screen 2')),
          )
        ],
      ),
    );
  }
}
