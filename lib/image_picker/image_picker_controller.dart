import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{

  final imgpath=''.obs;
  
  Future getImageFromCam() async{
    final picker=ImagePicker();
    final image=await picker.pickImage(source: ImageSource.camera);
    if(image != null){
      imgpath.value=image.path.toString();
    }
  }

  Future getImageFromGal() async{
    final picker=ImagePicker();
    final image=await picker.pickImage(source: ImageSource.gallery);
    if(image != null){
      imgpath.value=image.path.toString();
    }
  }
}