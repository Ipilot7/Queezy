import 'package:queezy/config/constants/assets.dart';

class Items {
  final String img;
  final String backImg;
  final String title;
  final String next;
  final String skip;

  ///
  Items({
    required this.img,
    required this.backImg,
    required this.title,
    required this.next,
    required this.skip,
  });
}

List<Items> onBoardingItems = [
  Items(
    img: Assets.images.onBoarding1,
    backImg: Assets.images.onBoardingBack1,
    title: 'Create gamified quizzes becomes simple',
    next: 'Next',
    skip: 'Skip',
  ),
  Items(
    img: Assets.images.onBoarding2,
    backImg: Assets.images.onBoardingBack2,
    title: 'Find quizzes to test out your knowledge',
    next: 'Next',
    skip: 'Skip',
  ),
  Items(
    img: Assets.images.onBoarding3,
    backImg: Assets.images.onBoardingBack3,
    title: 'Take part in challenges with friends',
    next: 'Let\'s go',
    skip: '',
  ),
];
