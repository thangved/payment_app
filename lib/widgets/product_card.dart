import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/products/product.dart';

class PaProductCard extends StatelessWidget {
  const PaProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            product.image,
            width: 87,
            height: 67,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Order Summary',
                  style: kDefaultHeading3Style,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  product.name,
                  style: kDefaultSubtitleStyle.copyWith(
                      overflow: TextOverflow.ellipsis),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Text(
                      'Qty: 1',
                      style: kDefaultSubtitleStyle,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Size: 7 UK',
                      style: kDefaultSubtitleStyle,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
