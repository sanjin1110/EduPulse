import 'package:flutter/material.dart';

import '../constants/color.dart';
import '../models/course.dart';

class MyCoursePage extends StatelessWidget {
  const MyCoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set background color to white
        elevation: 4, // Add shadow
        title: const Text(
          'My Courses',
          style: TextStyle(color: Colors.black), // Set text color to black
        ),
        centerTitle: true, // Center align the title
        automaticallyImplyLeading: false, // Hide back button
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          Course course = courses[index];
          return CourseItem(course: course);
        },
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),

        elevation: 4, // Add elevation for shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Add border radius
          side: BorderSide(
              color: Colors.grey.shade300, width: 1), // Add border side
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.asset(
                course.thumbnail,
                fit: BoxFit.fill,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    ' 12/24 Lessons completed',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: LinearProgressIndicator(
                      value: 0.50,
                      backgroundColor: Colors.black12,
                      color: kPrimaryColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
