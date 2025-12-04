import 'package:flutter/material.dart';
import 'package:foodapp/model/product_model.dart';

import '../model/cart_model.dart';

class CartProvider extends ChangeNotifier {
  //  private list _cart to store the cart items, each represented by a cartModel
  List<CartModel> _carts = [];

  // getter for _Carts to access the list of cart items
  List<CartModel> get carts => _carts;

  //setter for _carts. update the cart list and notifies listeners when it changes.
  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners(); //Notifies any widgets to this provider to rebuild.
  }

  // add a product to the cart.
  addCart(ProductModel productModel) {
    if (productExist(productModel)) {
      // finds the index of the product in the cart.
      int index = _carts.indexWhere(
        (element) => element.productModel == productModel,
        // increase the quantity of the product by 1 if it already exists.
      );
      _carts[index].quantity = _carts[index].quantity + 1;
    } else {
      // add a new CartModel item with quantity 1 if the product doesn't exist in the cart
      _carts.add(CartModel(productModel: productModel, quantity: 1));
    }
    notifyListeners(); // update
  }

  // increase the quantity of a specific product in the cart by 1
  addQuantity(ProductModel product) {
    // finds the index of the product in the cart.
    int index = _carts.indexWhere((element) => element.productModel == product);
    // increase the quantity by 1.
    _carts[index].quantity = _carts[index].quantity + 1;
    notifyListeners(); // update
  }

  // decrease the quantity of a specific product in the cart by 1.
  reduceQuantity(ProductModel product) {
    // finds the index of the product in the cart.
    int index = _carts.indexWhere((element) => element.productModel == product);
    // decrease the quantity by 1.
    _carts[index].quantity = _carts[index].quantity - 1;
    notifyListeners(); // update
  }

  // check if a product already exists in the cart.
  // return true if the product is in the cart, false otherwise.
  productExist(ProductModel productModel) {
    if (_carts.indexWhere((element) => element.productModel == productModel) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }

  // calculates the total price of all items in the cart.
  double totalCart() {
    double total = 0; // initialize the total to 0;
    for (var i = 0; i < _carts.length; i++) {
      // add the price for each cart item
      total = total + _carts[i].quantity * _carts[i].productModel.price;
    }
    return total; // return  the total price of all cart items
  }
}
