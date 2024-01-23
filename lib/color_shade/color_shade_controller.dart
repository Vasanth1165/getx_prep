import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ColorShadeController extends GetxController{
  RxDouble opacity =1.0.obs;
  getUpdate(double num){
    opacity.value=num;
  }

  RxDouble start =1.0.obs;
  RxDouble end=100.0.obs;
  getRange(RangeValues rangeValues){
    start.value=rangeValues.start;
    end.value=rangeValues.end;
    print(" ( $start , $end )");
  }
}