import 'package:get/state_manager.dart';

class CounterController extends GetxController{
  RxInt counter=0.obs;
  void counterInc(){
    counter.value++;
  }

  void counterDec(){
    counter.value--;
  }

  void counterReset(){
    counter.value=0;
  }
}