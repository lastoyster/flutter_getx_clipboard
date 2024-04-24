import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  var text = ''.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  copyText(String text) {
    Clipboard.setData(ClipboardData(text: text));
  }

  pasteText() async {
    ClipboardData? clipborad = await Clipboard.getData('text/plain');
    text.value = clipborad!.text!;
  }
}
