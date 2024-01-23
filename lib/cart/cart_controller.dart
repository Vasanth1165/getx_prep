import 'package:get/get.dart';
import 'package:getx_prep/cart/cart_model.dart';

class CartController extends GetxController{
  RxList<CartModel> cartItems=<CartModel>[
    CartModel(name: "Apple", favCart: false.obs),
    CartModel(name: "Bat", favCart: false.obs),
    CartModel(name: "Cat", favCart: false.obs),
    CartModel(name: "Dog", favCart: false.obs),
    CartModel(name: "Egg", favCart: false.obs),
    CartModel(name: "Fox", favCart: false.obs),
    CartModel(name: "Goat", favCart: false.obs),
    CartModel(name: "Hat", favCart: false.obs),
    CartModel(name: "Ice", favCart: false.obs),
    CartModel(name: "Joker", favCart: false.obs),
    CartModel(name: "Kite", favCart: false.obs),
    CartModel(name: "Lord", favCart: false.obs),
    CartModel(name: "Mango", favCart: false.obs),
    // CartModel(name: "", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
    // CartModel(name: "Apple", favCart: false.obs),
  ].obs;
  RxList<CartModel> favCartItems=<CartModel>[].obs;
  
  toggle(CartModel cartModel){
    cartModel.favCart.value=!cartModel.favCart.value;
  }
  addFavCart(CartModel cartModel){
    toggle(cartModel);
    favCartItems.add(cartModel);
  }

  rmFavCart(CartModel cartModel,int index){
    toggle(cartModel);
    favCartItems.removeAt(index);
  }

  removeFavCart(int index){
    favCartItems.removeAt(index);
  }
}