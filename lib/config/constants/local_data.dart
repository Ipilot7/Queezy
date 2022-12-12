import 'package:flutter_svg/flutter_svg.dart';
import 'package:queezy/config/constants/assets.dart';
import 'package:queezy/presentation/pages/home_page/presentation/pages/home_page.dart';
import 'package:queezy/presentation/pages/profile_page/profile_page.dart';
import 'package:queezy/presentation/pages/search_page/presentation/pages/search_page.dart';
import 'package:queezy/presentation/pages/statistics_page.dart';

List pages = [
  const HomePage(),
  const SearchPage(),
  const StatisticsPage(),
  const ProfilePage()
];
List buttonIcons = [
  SvgPicture.asset(Assets.icons.home),
  SvgPicture.asset(Assets.icons.search),
  SvgPicture.asset(Assets.icons.statistics),
  SvgPicture.asset(Assets.icons.profile),
];
List buttonIconsAct = [
  SvgPicture.asset(Assets.icons.homeAct),
  SvgPicture.asset(Assets.icons.searchAct),
  SvgPicture.asset(Assets.icons.statisticsAct),
  SvgPicture.asset(Assets.icons.profileAct),
];

  List tabNames = ['Badge', 'Stats', 'Details'];