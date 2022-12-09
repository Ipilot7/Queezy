abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get home => "$basePath/home.svg";
  String get homeAct => '$basePath/homeAct.svg';
  String get search => '$basePath/search.svg';
  String get searchAct => '$basePath/searchAct.svg';
  String get statistics => '$basePath/statistics.svg';
  String get statisticsAct => '$basePath/statisticsAct.svg';
  String get profile => '$basePath/profile.svg';
  String get profileAct => '$basePath/profileAct.svg';
  String get arrowBack => '$basePath/arrow_back.svg';
  String get google => '$basePath/google.svg';
  String get facebook => '$basePath/facebook.svg';
  String get sunIcon => '$basePath/sun_icon.svg';
  String get earth => '$basePath/earth.svg';
  String get localRank => '$basePath/localRank.svg';
  String get settings => '$basePath/settings.svg';
  String get star => '$basePath/star.svg';
  String get divider => '$basePath/divider.svg';
  String get coma => '$basePath/coma.svg';
  String get metal => '$basePath/metal.svg';
  String get pencil => '$basePath/pencil.svg';
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get appLogo => '$basePath/appLogo.png';
  String get splashBack => '$basePath/splashBack.png';
  String get onBoarding1 => '$basePath/onBoarding1.png';
  String get onBoarding2 => '$basePath/onBoarding2.png';
  String get onBoarding3 => '$basePath/onBoarding3.png';
  String get onBoardingBack1 => '$basePath/onBoardingBack1.png';
  String get onBoardingBack2 => '$basePath/onBoardingBack2.png';
  String get onBoardingBack3 => '$basePath/onBoardingBack3.png';
  String get o => '$basePath/o.png';
  String get logo => '$basePath/logo.png';
  String get peoples2 => '$basePath/peoples2.png';
  String get defAvatar => '$basePath/def_avatar.png';
  String get medal => '$basePath/medal.png';
  String get linear => '$basePath/linear.png';
  String get profileBg => '$basePath/profileBg.png';
  String get badge => '$basePath/badge.png';
}
