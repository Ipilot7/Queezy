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
      body: pages[pageIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: AppColors.metalColor.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 9,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(mainAxisSize: MainAxisSize.max, children: [
              BottomIcons(0),
              const Spacer(),
              BottomIcons(1),
              const Spacer(flex: 3),
              BottomIcons(2),
              const Spacer(),
              BottomIcons(3), // Row(
              //   // mainAxisSize: MainAxisSize.max,
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     IconButton(
              //       icon: pageIndex == 0 ? buttonIconsAct[0] : buttonIcons[0],
              //       onPressed: () {
              //         setState(() {
              //           pageIndex = 0;
              //         });
              //       },
              //     ),
              //     IconButton(
              //       icon: pageIndex == 1 ? buttonIconsAct[1] : buttonIcons[1],
              //       onPressed: () {
              //         setState(() {
              //           pageIndex = 1;
              //         });
              //       },
              //     ),
              //   ],
              // ),
              // Row(
              //   mainAxisSize: MainAxisSize.max,
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     IconButton(
              //       icon: pageIndex == 2 ? buttonIconsAct[2] : buttonIcons[2],
              //       onPressed: () {
              //         setState(() {
              //           pageIndex = 2;
              //         });
              //       },
              //     ),
              //     IconButton(
              //       icon: pageIndex == 3 ? buttonIconsAct[3] : buttonIcons[3],
              //       onPressed: () {
              //         setState(() {
              //           pageIndex = 3;
              //         });
              //       },
              //     ),
              //   ],
              // )
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

  IconButton BottomIcons(int index) {
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
