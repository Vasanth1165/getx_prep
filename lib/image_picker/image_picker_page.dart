import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_prep/image_picker/image_picker_controller.dart';

class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});

  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {

  ImagePickerController imagePickerController=Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: const Text("Image Picker"),),
      body:Obx(() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: imagePickerController.imgpath.isNotEmpty ? FileImage(File(imagePickerController.imgpath.toString())) : null,
              radius: 50,
            ),
          ),
        ],
      ),),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        FloatingActionButton(onPressed: (){
          imagePickerController.getImageFromGal();
        },child: const Icon(Icons.photo),),
        const SizedBox(
          width: 25,
        ),
        FloatingActionButton(onPressed: (){
          imagePickerController.getImageFromCam();
        },child: const Icon(Icons.camera_alt),),
      ],),
    );
  }
}