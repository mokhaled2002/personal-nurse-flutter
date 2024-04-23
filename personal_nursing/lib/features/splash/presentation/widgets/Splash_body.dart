import  'package:personal_nursing/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_nursing/features/on%20Boarding/presentation/on_boarding_body.dart';
import 'package:personal_nursing/features/on%20Boarding/presentation/widgets/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              'Personal Nurse !',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff),
              ),
            ),

          ),
          // Adobe XD layer: 'mix_fruit_png_11' (shape)
        ],
      ),
    );
  }
  void goToNextView(){
    Future.delayed(Duration(seconds: 3) , ()
    {
      Get.to(OnBoardingView());
    });
  }

}
