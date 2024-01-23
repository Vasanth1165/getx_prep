import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prep/cart/cart_controller.dart';
import 'package:getx_prep/cart/cart_page.dart';

class AddToCartPage extends StatelessWidget {
  const AddToCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("Build");
    CartController cartController=Get.put(CartController());
    return Scaffold(
      appBar: AppBar(title: const Text("CART"),actions: [IconButton(onPressed: (){
        Get.to(()=> const CartPage());
      }, icon:  Badge(
        label: Obx(() => Text(cartController.favCartItems.length.toString(),style: const TextStyle(fontWeight: FontWeight.bold),)),
        child: const Icon(Icons.shopping_cart)))],),
    
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
        itemBuilder:(context, index) =>  Material(
        elevation: 5,
        color: Colors.white,
        shadowColor: Colors.grey.shade200,
        child: ListTile(
          onTap: (){
            if(cartController.cartItems[index].favCart.value){
              cartController.rmFavCart(cartController.cartItems[index],index);
            }else{
              cartController.addFavCart(cartController.cartItems[index]);
            }
          },
          title: Text(cartController.cartItems[index].name),
          trailing: Obx(() => Icon(Icons.favorite,color: cartController.cartItems[index].favCart.value ? Colors.red :Colors.black,),
          ))
          ),
          separatorBuilder: (BuildContext context, int index) { return const SizedBox(height: 20,); }, itemCount: cartController.cartItems.length,),
    );
  }
}