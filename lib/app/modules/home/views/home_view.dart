import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clipboard'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(children: [
            TextField(
              controller: controller.textEditingController,
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => Text(
                controller.text.value,
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.copyText(controller.textEditingController.text);
                },
                child: Text('Copy')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  controller.pasteText();
                },
                child: Text('Paste')),
          ]),
        ),
      ),
    );
  }
}
