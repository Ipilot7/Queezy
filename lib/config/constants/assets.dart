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
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get o => '$basePath/o.png';
  String get logo => '$basePath/logo.png';
  String get peoples2 => '$basePath/peoples2.png';
}
