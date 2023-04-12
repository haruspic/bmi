import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.onTap,
    required this.buttonTitle,
  });

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.only(bottom: 20),
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomButtonStyle,
          ),
        ),
      ),
    );
  }
}
