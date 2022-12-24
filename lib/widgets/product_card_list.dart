import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/products/product.dart';
import 'pa_card.dart';
import 'product_card.dart';

class PaProductCardList extends StatelessWidget {
  const PaProductCardList({
    Key? key,
    required this.products,
    required this.address,
  }) : super(key: key);

  final List<Product> products;
  final String address;

  @override
  Widget build(BuildContext context) {
    return PaCard(
      child: Column(
        children: [
          Column(
            children: products.map((e) => PaProductCard(product: e)).toList(),
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    address,
                    style: kDefaultSubtitleStyle,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total Amount',
                    style: kDefaultHeading3Style,
                  ),
                  Text(
                    '₹${_getPrice()}',
                    style: kDefaultHeading3Style,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  double _getPrice() {
    double price = 0;
    for (int i = 0; i < products.length; i++) {
      price += products[i].price;
    }
    return price;
  }
}
