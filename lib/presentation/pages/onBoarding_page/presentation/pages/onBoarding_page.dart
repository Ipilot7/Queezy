import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../config/constants/assets.dart';
import '../../../../routes/routes.dart';
import '../../data/models/onBoarding_model.dart';
import '../widgets/onBoarding_container.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget animation(int index, int delay, Widget child) {
    if (index == 1) {
      return FadeInDown(
        delay: Duration(milliseconds: delay),
        child: child,
      );
    }
    return FadeInUp(
      delay: Duration(milliseconds: delay),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _onBoardingBody(context),
    );
  }

  Widget _onBoardingBody(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.onBoardingBack1),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          _onBoardingImage(context),
          _onBoardingInfo(context),
        ],
      ),
    );
  }

  _onBoardingImage(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return PageView.builder(
      controller: pageController,
      itemCount: onBoardingItems.length,
      onPageChanged: (newIndex) {
        setState(() {
          currentIndex = newIndex;
        });
      },
      physics: const BouncingScrollPhysics(),
      itemBuilder: ((context, index) {
        return Stack(
          children: [
            /// IMG
            Container(
              margin: const EdgeInsets.fromLTRB(10, 40, 20, 10),
              width: size.width,
              height: size.height / 1.5,
              child: animation(
                index,
                100,
                Image.asset(onBoardingItems[index].img),
              ),
            ),
          ],
        );
      }),
    );
  }

  _onBoardingInfo(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          /// PAGE INDICATOR
          SmoothPageIndicator(
            controller: pageController,
            count: onBoardingItems.length,
            effect: const ScaleEffect(
              spacing: 16.0,
              radius: 10.0,
              dotWidth: 8.0,
              dotHeight: 8.0,
              //expansionFactor: 3.8,
              offset: 0,
              //activeDotScale: 1.5,
              activeStrokeWidth: 2,
              //fixedCenter: true,
              paintStyle: PaintingStyle.fill,
              activePaintStyle: PaintingStyle.stroke,
              strokeWidth: 15,
              scale: 2,
              dotColor: Colors.white,
              activeDotColor: Colors.white,
            ),
            onDotClicked: (newIndex) {
              setState(() {
                currentIndex = newIndex;
                pageController.animateToPage(newIndex,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              });
            },
          ),
          SizedBox(height: size.height * 0.02),
          OnBoardingContainer(
            title: onBoardingItems[currentIndex].title,
            tNext: onBoardingItems[currentIndex].next,
            tSkip: onBoardingItems[currentIndex].skip,
            next: () {
              setState(() {
                if (currentIndex < 2) {
                  pageController.animateToPage(currentIndex + 1,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.fastOutSlowIn);
                } else {
                  Navigator.pushReplacementNamed(context, Routes.loginAndSignUp);
                }
              });
            },
            skip: () {
              setState(() {
                pageController.animateToPage(2,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.fastLinearToSlowEaseIn);
              });
            },
          ),
        ],
      ),
    );
  }
}
