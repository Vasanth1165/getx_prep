import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_prep/cart/add_to_cart_page.dart';
import 'package:getx_prep/cart/cart_page.dart';
import 'package:getx_prep/color_shade/color_shade_page.dart';
import 'package:getx_prep/counter_increment/counter_increment_page.dart';
import 'package:getx_prep/image_genrator/image_generator_page.dart';
import 'package:getx_prep/image_picker/image_picker_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Column( 
          children: [
            Center(child: ElevatedButton(onPressed: ()=> Get.to(()=> const CounterIncrementScr1()), child: const Text("Counter_Increment"))),
            ElevatedButton(onPressed: ()=> Get.to(()=> const ColorShadepage()), child: const Text("Color_Shade")),
            ElevatedButton(onPressed: ()=> Get.to(()=> const AddToCartPage()), child: const Text("Fav_Cart")),
            ElevatedButton(onPressed: ()=> Get.to(()=> const ImagePickerPage()), child: const Text("Image_Picker")),
            ElevatedButton(onPressed: ()=> Get.to(()=> const ImageGeneratorPage()), child: const Text("MAYA AI")),

          ],
        ),
      ),
    );
  }
}