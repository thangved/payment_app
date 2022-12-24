import 'package:flutter/material.dart';

import '../../../widgets/pa_card.dart';

class OffersCard extends StatelessWidget {
  const OffersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PaCard(
      child: Row(
        children: const [
          Icon(
            Icons.confirmation_num_outlined,
            color: Colors.blue,
          ),
          SizedBox(width: 10),
          Expanded(
              child: Text(
            'Offers',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          )),
          Icon(Icons.keyboard_arrow_right_rounded)
        ],
      ),
    );
  }
}
