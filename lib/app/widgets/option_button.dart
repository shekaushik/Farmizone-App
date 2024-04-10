import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/screen_utils.dart';

class OptionButton extends StatelessWidget {
  final String desc;
  final String method;
  final VoidCallback onPressHandler;

  const OptionButton({required this.desc, required this.method, required this.onPressHandler});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressHandler,
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(text: desc),
            TextSpan(
              text: method,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    color: kPrimaryGreen,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
