import 'package:flutter/material.dart';
import 'package:personal_nursing/core/constants.dart';
import 'package:personal_nursing/core/utils/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, this.text, this.onTap}): super(key: key);
  final String? text;
  final VoidCallback? onTap;
  @override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
      color: kMainColor,
      borderRadius: BorderRadius.circular(8),
    ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 14,
            color: const Color(0xffffffff),
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    ),
  );
}
}