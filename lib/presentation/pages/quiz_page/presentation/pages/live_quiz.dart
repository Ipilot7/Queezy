import 'package:flutter/material.dart';

import '../../../../../config/constants/assets.dart';
import '../widgets/liveQuizCard.dart';
import '../widgets/liveQuizContainer.dart';
import '../widgets/live_quiz_progressBar.dart';

class LiveQuizPage extends StatefulWidget {
  const LiveQuizPage({super.key});

  @override
  State<LiveQuizPage> createState() => _LiveQuizPageState();
}

class _LiveQuizPageState extends State<LiveQuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  liveQuizContainer(
                    bgColor: Colors.white70,
                    imgIcon: Assets.images.userPng,
                    text: '1',
                  ),
                  liveQuizProgressBar(),
                  liveQuizContainer(
                    bgColor: Color(0xffFF9B57),
                    imgIcon: Assets.images.quizPart,
                    text: '35',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageView.builder(
                  itemBuilder: (context, index) => questionCard(),
                  itemCount: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
