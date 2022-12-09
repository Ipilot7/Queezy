import 'package:flutter/material.dart';
import 'package:queezy/presentation/pages/search_page/presentation/widgets/custom_tap_bar_view.dart';
import 'package:queezy/presentation/pages/search_page/presentation/widgets/search_text_field_widget.dart';
import 'package:queezy/presentation/widgets/custom_app_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: const [
          CustomAppBarWidget(title: 'Discover',isHavePadding: false),
          SearchTextFieldWidget(),
          CustomTabBarWidget(),
          CustomTabBarViewWidget()
        ],
      ),
    );
  }
}
