import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_nursing/core/utils/size_config.dart';
import 'package:personal_nursing/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image}) : super(key : key);

  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        Image.asset(image!),
        const VerticalSpace(3),
        Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1),

        Text(
          subTitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poopins',
            fontSize: 15,
            color: const Color(0xff78787c),
          ),

        ),
      ],
    );
  }
}
