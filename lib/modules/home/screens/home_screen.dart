import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/widgets/pa_card.dart';

import '../../../widgets/pa_method_card.dart';
import '../../../widgets/product_card_list.dart';
import '../widgets/offers_card.dart';
import '../widgets/pay_bottom.dart';
import '../../../mock/products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        shadowColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
        ),
        title: const Text(
          'Payment Options',
          style: kDefaultHeading1Style,
        ),
      ),
      bottomNavigationBar: const PayBottom(
        price: 6.699,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                PaProductCardList(
                  products: products,
                  address: '2972 Westchester Rd. Santa Ana, Illinois 85486 ',
                ),
                SizedBox(height: 20),
                OffersCard(),
                SizedBox(height: 20),
                Text(
                  'Credit & Debit Cards',
                  style: kDefaultHeading2Style,
                ),
                SizedBox(height: 20),
                _CreditMethodCardList(),
                SizedBox(height: 20),
                Text(
                  'UPI',
                  style: kDefaultHeading2Style,
                ),
                SizedBox(height: 20),
                _UPIMethodCardList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UPIMethodCardList extends StatelessWidget {
  const _UPIMethodCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaCard(
      child: Column(
        children: [
          Column(
            children: const [
              PaMethodCard(
                text: 'Google Pay',
                image: 'assets/images/logos_google_pay.png',
              ),
              SizedBox(height: 10),
              PaMethodCard(
                text: 'PhonePe',
                image: 'assets/images/logos_phone_pe.png',
              ),
            ],
          ),
          const _AddNewMethod(text: 'Add New UPI ID'),
        ],
      ),
    );
  }
}

class _CreditMethodCardList extends StatelessWidget {
  const _CreditMethodCardList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaCard(
      child: Column(
        children: [
          Column(
            children: const [
              PaMethodCard(
                text: 'Axis Bank  **** **** **** 8395',
                image: 'assets/images/logos_mastercard.png',
              ),
              SizedBox(height: 10),
              PaMethodCard(
                text: 'HDFC Bank  **** **** **** 6246',
                image: 'assets/images/logos_visa.png',
              ),
            ],
          ),
          const _AddNewMethod(
            text: 'Add New Card',
          )
        ],
      ),
    );
  }
}

class _AddNewMethod extends StatelessWidget {
  const _AddNewMethod({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade100,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.blue,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: kDefaultSubtitleStyle.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
