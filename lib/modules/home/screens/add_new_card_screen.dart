import 'package:flutter/material.dart';
import 'package:payment_app/constants.dart';
import 'package:payment_app/widgets/pa_button.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({
    Key? key,
    required this.onClose,
  }) : super(key: key);

  final Function onClose;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const Expanded(
                  child: Text(
                    'Add New Card',
                    style: kDefaultHeading1Style,
                  ),
                ),
                InkWell(
                  child: const Icon(Icons.close),
                  onTap: () {
                    onClose();
                  },
                )
              ],
            ),
            Expanded(
              child: Column(
                children: [],
              ),
            ),
            Container(
              width: double.infinity,
              child: PaButton(
                text: 'Save card and Proceed',
                press: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
