import 'package:get/get.dart';

class CounterController extends GetxController{
  RxInt counter = 0.obs;

  void increment(){
    counter.value++;

    // counter.value = counter.value + 1;
    //
    // counter(counter.value + 1);
  }

}