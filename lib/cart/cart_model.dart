import 'package:get/get.dart';

class CartModel{
  final String name;
  RxBool favCart;
  CartModel({
    required this.name,
    required this.favCart
  });
}