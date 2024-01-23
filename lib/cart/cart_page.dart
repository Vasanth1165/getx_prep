import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prep/cart/cart_controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("Build");
    CartController cartController=Get.put(CartController());
    return Scaffold(
      appBar: AppBar(title: const Text("CART"),),
    
      body: Obx(() => ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
        itemBuilder:(context, index) =>  Material(
        elevation: 5,
        color: Colors.white,
        shadowColor: Colors.grey.shade200,
        child: ListTile(
          onTap: (){
            cartController.removeFavCart(index);
          },
          title: Text(cartController.favCartItems[index].name),
          trailing: Obx(() => Icon(Icons.delete,color: cartController.favCartItems[index].favCart.value ? Colors.red :Colors.black,),
          ))
          ),
          separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 20,); }, itemCount: cartController.favCartItems.length,),)
    );
  }
}