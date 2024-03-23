import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/utils.dart';

class FloatingCalculateButton extends StatelessWidget {
  const FloatingCalculateButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      mini: true,
      backgroundColor: onPressed != null ? AppConstants.darkGold : Colors.grey,
      tooltip: "Calculate".toLocalize,
      child: const Padding(
        padding: EdgeInsets.only(top: 2.5),
        child: Icon(
          CupertinoIcons.equal_circle_fill,
          color: AppConstants.lightBlue,
        ),
      ),
    );
  }
}
