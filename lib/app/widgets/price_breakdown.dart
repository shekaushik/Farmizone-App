import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class PriceBreakdown extends StatelessWidget {
  const PriceBreakdown({
    required Key key,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: kTextColorAccent,
              ),
        ),
        Spacer(),
        Text(
          price,
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: kTextColor,
                fontWeight: FontWeight.w700,
              ),
        ),
      ],
    );
  }
}
