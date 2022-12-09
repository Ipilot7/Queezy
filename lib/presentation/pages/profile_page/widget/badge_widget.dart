import 'package:flutter/material.dart';
import 'package:queezy/config/constants/assets.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(3, (index) => Image.asset(Assets.images.badge)),
      ),
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(3, (index) => Image.asset(Assets.images.badge)),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(3, (index) => Image.asset(Assets.images.badge)),
      )
    ]);
  }
}
