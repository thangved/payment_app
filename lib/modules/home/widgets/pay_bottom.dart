import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/modules/home/screens/add_new_card_screen.dart';
import 'package:payment_app/widgets/pa_button.dart';

class PayBottom extends StatelessWidget {
  const PayBottom({
    Key? key,
    required this.price,
  }) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      decoration: const BoxDecoration(
        color: Color(0xFFFAFAFA),
      ),
      child: Row(
        children: [
          _PayBottomLeft(price: price),
          const _PayBottomRight(),
        ],
      ),
    );
  }
}

class _PayBottomRight extends StatelessWidget {
  const _PayBottomRight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PaButton(
        text: 'Proceed to Pay',
        press: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) {
              return AddNewCardScreen(
                onClose: () {
                  Navigator.pop(context);
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _PayBottomLeft extends StatelessWidget {
  const _PayBottomLeft({
    Key? key,
    required this.price,
  }) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '₹$price',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'View detailed bill',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
