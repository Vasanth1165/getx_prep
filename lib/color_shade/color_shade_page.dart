import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:getx_prep/color_shade/color_shade_controller.dart';

class ColorShadepage extends StatelessWidget {
  const ColorShadepage({super.key});

  @override
  Widget build(BuildContext context) {
    ColorShadeController colorShadeController=Get.put(ColorShadeController());
    return Scaffold(
      appBar: AppBar(title: const Text("SHADE"),),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
            constraints: const BoxConstraints(maxHeight: 100,minWidth: 300,maxWidth: 350),
            color: Colors.red.withOpacity(colorShadeController.opacity.value),
          )),
          Obx(() => Container(
            constraints: const BoxConstraints(maxHeight: 100,minWidth: 300,maxWidth: 350),
            color: Colors.green.withOpacity(colorShadeController.opacity.value),
          )),
          Obx(() => Container(
            constraints: const BoxConstraints(maxHeight: 100,minWidth: 300,maxWidth: 350),
            color: Colors.yellow.withOpacity(colorShadeController.opacity.value),
          )),
          const SizedBox(
            height: 100,
          ),
          Obx(() => Slider(value: colorShadeController.opacity.value, onChanged: (value){
            colorShadeController.getUpdate(value);
          }),),

          Obx(() => RangeSlider(
            min: 1.0,
            max: 100.0,
            values: RangeValues(colorShadeController.start.value, colorShadeController.end.value), onChanged: (RangeValues rangeValues){
            colorShadeController.getRange(rangeValues);
            },
          )),

          Obx(() => Text('(${colorShadeController.start.value.toInt()} , ${colorShadeController.end.value.toInt()})'))
          
        ]
      ),
    );
  }
}