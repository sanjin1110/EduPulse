import 'package:education_app/models/lesson.dart';
import 'package:education_app/widgets/lesson_card.dart';
import 'package:flutter/material.dart';

import '../widgets/quick_screen_appbar.dart';

class QuickFoodsScreen extends StatefulWidget {
  const QuickFoodsScreen({Key? key}) : super(key: key);

  @override
  State<QuickFoodsScreen> createState() => _QuickFoodsScreenState();
}

class _QuickFoodsScreenState extends State<QuickFoodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const QuickScreenAppbar(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => LessonCard(
                    lesson: lessonList[index],
                  ),
                  itemCount: lessonList.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
