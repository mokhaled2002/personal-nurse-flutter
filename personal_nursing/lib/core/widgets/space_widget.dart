import 'package:flutter/material.dart';
import 'package:personal_nursing/core/utils/size_config.dart';

class HorizentalSpace extends StatelessWidget {
  const HorizentalSpace(this.value);
final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );

  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );

  }
}
