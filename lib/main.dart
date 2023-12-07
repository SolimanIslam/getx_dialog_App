import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("GetX Dialog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.defaultDialog(
                      title: "Texts Dialog",
                      titleStyle: TextStyle(color: Colors.red),
                      middleText: "the dialog content will be displayed here ",
                      middleTextStyle: TextStyle(color: Colors.blue.shade900),
                      textCancel: "Cancel",
                      onCancel: () {
                        print("Cancelled");
                      },
                      textConfirm: "Confirm",
                      onConfirm: () {
                        print("Confirmed");
                        Navigator.pop(context);
                      });
                },
                child: const Text("Texts Dialog")),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.defaultDialog(
                      title: "Widgets Dialog",
                      titleStyle: const TextStyle(color: Colors.red),
                      content: Column(
                        children: [
                          const Row(
                            children: [
                              Column(
                                children: [
                                  Text("Text widget 1"),
                                  Text("Text widget 2")
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Text("Text widget 3"),
                                  Text("Text widget 4")
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text("Enter your Name"),
                          TextFormField(),
                        ],
                      ),
                      actions: [
                        MaterialButton(
                          onPressed: () {
                            print("ok");
                          },
                          color: Colors.red,
                          textColor: Colors.white,
                          child: const Text("Ok"),
                        ),
                        MaterialButton(
                          onPressed: () {
                            print("confirmed");
                          },
                          color: Colors.red,
                          textColor: Colors.white,
                          child: const Text("confirmed"),
                        )
                      ],
                      cancel: MaterialButton(
                        onPressed: () {},
                        color: Colors.red,
                        textColor: Colors.white,
                        child: const Text("Cancel"),
                      ));
                },
                child: const Text("Widgets dialog")),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.snackbar("default Title", "Default Message");
                },
                child: const Text("Default Snackbar")),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.snackbar(
                    "default Title", "Default Message",
                    duration: Duration(seconds: 5),
                    titleText: Text("SnackBar Title"),
                    //Overwrites the default title
                    messageText: Text("SnackBar Message"),
                    //Overwrites the default title
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: const Text("Customized Snackbar")),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      height: 200,
                      padding: const EdgeInsets.all(50),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: const Text("Bottom Sheet"),
                    ),
                    enterBottomSheetDuration: const Duration(seconds: 1),
                    exitBottomSheetDuration: const Duration(seconds: 1),
                    isDismissible: true,
                  );
                },
                child: const Text("Bottom Sheet")),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () {
                  if (Get.isDarkMode) {
                    Get.changeTheme(Themes.customTheme1);
                  } else {
                    Get.changeTheme(Themes.customTheme2);
                  }
                },
                child: const Text("Toggle the Theme")),
          ],
        ),
      ),
    ));
  }
}
