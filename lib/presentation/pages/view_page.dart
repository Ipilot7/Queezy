import 'package:flutter/material.dart';
import 'package:queezy/config/constants/app_colors.dart';
import 'package:queezy/config/constants/local_data.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[pageIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: AppColors.metalColor.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 9,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 20),
            child: Row(mainAxisSize: MainAxisSize.max, children: [
              bottomIcons(0),
              const Spacer(),
              bottomIcons(1),
              const Spacer(flex: 3),
              bottomIcons(2),
              const Spacer(),
              bottomIcons(3),
            ]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  IconButton bottomIcons(int index) {
    return IconButton(
      icon: pageIndex == index ? buttonIconsAct[index] : buttonIcons[index],
      onPressed: () {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }
}
