import 'package:flutter/material.dart';

class PaCard extends StatelessWidget {
  const PaCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Color(0x10000000),
            offset: Offset(0, 8),
            blurRadius: 16,
          ),
        ],
      ),
      child: child,
    );
  }
}