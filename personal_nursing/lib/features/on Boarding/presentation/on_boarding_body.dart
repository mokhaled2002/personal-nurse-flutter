
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:personal_nursing/core/utils/size_config.dart';
import 'package:personal_nursing/core/widgets/custom_buttons.dart';
import 'package:personal_nursing/features/on%20Boarding/presentation/widgets/custom_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);
  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        CustomPageView(

        ),


        Visibility(
          visible: pageController!.hasClients ?(pageController?.page ==2 ? false : true) : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
                color: const Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),

        Positioned(
            right: SizeConfig.defaultSize ! * 10,
            left: SizeConfig.defaultSize ! * 10,
         bottom: SizeConfig.defaultSize ! * 10 ,
            child: CustomGeneralButton(

              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get started' : 'Next') : 'Next',
            )),

      ],
    );
  }
}

