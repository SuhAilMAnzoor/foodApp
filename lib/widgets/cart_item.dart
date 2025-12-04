import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/utils/consts.dart';
import 'package:provider/provider.dart';

import '../model/cart_model.dart';
import '../provider/cart_provider.dart';

class CartItems extends StatelessWidget {
  final CartModel cart;

  const CartItems({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 140,
      width: size.width / 1.2,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            height: 130,
            width: size.width - 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Positioned(
            top: -5,
            left: 0,
            child: Transform.rotate(
              angle: 10 * pi / 180,
              child: SizedBox(
                height: 130,
                width: 130,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 100,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: kblack.withOpacity(0.4),
                              blurRadius: 10,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(cart.productModel.image, width: 130),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 150,
            right: 20,
            top: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.productModel.name,
                  maxLines: 1,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star_rate_rounded, size: 20, color: kyellow),
                        SizedBox(width: 2),
                        Text(
                          cart.productModel.rate.toString(),
                          style: TextStyle(color: kblack),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: kpink, size: 20),
                        SizedBox(width: 2),
                        Text(
                          "${cart.productModel.distance.toString()} m",
                          style: TextStyle(color: kblack.withOpacity(0.8)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$${3.99}",
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (cart.quantity > 1) {
                          cartProvider.reduceQuantity(cart.productModel);
                        }
                      },
                      child: Container(
                        width: 25,
                        height: 40,
                        decoration: BoxDecoration(
                          color: kblack,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(7),
                          ),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      cart.quantity.toString(),
                      style: TextStyle(color: kblack),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        cartProvider.addCart(cart.productModel);
                      },
                      child: Container(
                        width: 25,
                        height: 40,
                        decoration: BoxDecoration(
                          color: kblack,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(7),
                          ),
                        ),
                        child: Icon(Icons.add, color: Colors.white, size: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
