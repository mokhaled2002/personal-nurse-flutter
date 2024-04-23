import 'package:flutter/material.dart';
import 'package:personal_nursing/core/utils/size_config.dart';
import 'package:personal_nursing/features/on%20Boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key,@required this.pageController}) : super(key: key);
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
        image: 'images/splashhh.jpg',
        title: 'Heart Rate' ,
        subTitle: 'You Can Check Your Heart Rate Easily!',
    ),
        PageViewItem(
          image: 'images/splashhh.jpg',
          title: 'Blood Pressure' ,
          subTitle: 'You Can Measure Your Blood Pressure Easily!',
        ),
        PageViewItem(
          image: 'images/splashhh.jpg',
          title: 'Heart Rate' ,
          subTitle: 'You Can Check Your Heart Rate Easily!',
        ),
    
    ],
    );
}
}

