import 'package:flutter/material.dart';
import 'package:pie_timer/pie_timer.dart';

class PieWidget extends StatefulWidget {
  const PieWidget({Key? key}) : super(key: key);

  @override
  State<PieWidget> createState() => _PieWidgetState();
}

class _PieWidgetState extends State<PieWidget>
    with SingleTickerProviderStateMixin {
  late PieAnimationController _pieAnimationController;

  @override
  void initState() {
    super.initState();
    _pieAnimationController = PieAnimationController(vsync: this);
  }

  @override
  void dispose() {
    _pieAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PieTimer(
          pieAnimationController: _pieAnimationController,
          duration: const Duration(seconds: 10),
          radius: 36,
          fillColor: Color(0xffFFCCD5),
          pieColor: Color(0xffFF8FA2),
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          isReverse: false,
          onCompleted: () => {},
          onDismissed: () => {},
          enableTouchControls: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.pause),
              onPressed: () {
                _pieAnimationController.stopAnim?.call();
              },
            ),
            IconButton(
              icon: const Icon(Icons.play_arrow),
              onPressed: () {
                _pieAnimationController.startAnim?.call();
              },
            ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: () {
                _pieAnimationController.resetAnim?.call();
              },
            ),
          ],
        ),
      ],
    );
  }
}
