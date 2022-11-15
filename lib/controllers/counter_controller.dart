import 'dart:async';

import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter = 0.obs;

  void increment(){
    counter.value++;

    // counter.value = counter.value + 1;
    //
    // counter(counter.value + 1);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("onINit");
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }
}