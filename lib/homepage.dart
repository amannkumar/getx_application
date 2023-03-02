import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Getx Application')),
      body: Column(
        children: [
          const Gap(5),
          Card(
            child: ListTile(
              title: const Text('Getx Dialog alert'),
              subtitle: const Text('Application dialog alert using Getx'),
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
          Card(
            child: ListTile(
              title: const Text('Change Theme'),
              subtitle: const Text('Change theme of the application'),
              onTap: () {
                Get.bottomSheet(Container(
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode_outlined),
                        title: const Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode_outlined),
                        title: const Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
          const Gap(10),
          Container(
            decoration: BoxDecoration(
                color: Colors.brown, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
                onPressed: () {
                  Get.toNamed('/screenOne',
                      arguments: {'name': 'for Aman Kumar'});
                },
                child: const Text('Go to the next Screen')),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('The Message', 'The sub message',
              snackPosition: SnackPosition.BOTTOM);
        },
        child: const Icon(Icons.add_box_outlined),
      ),
    );
  }
}
