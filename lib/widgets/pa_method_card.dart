import 'package:flutter/material.dart';

import '../constants.dart';

class PaMethodCard extends StatelessWidget {
  const PaMethodCard({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              style: kDefaultSubtitleStyle,
            ),
          ),
          const Radio(
            value: false,
            onChanged: null,
            groupValue: null,
          ),
        ],
      ),
    );
  }
}
