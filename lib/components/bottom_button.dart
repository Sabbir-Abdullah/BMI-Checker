import 'package:flutter/material.dart';

import '../constants.dart';


class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onTap, required this.buttonTitle});

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container( decoration: const BoxDecoration(color: kBottomContainerColour,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),

        margin: const EdgeInsets.only(top: 15.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
