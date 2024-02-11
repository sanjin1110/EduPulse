import 'package:education_app/screens/course_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../models/course.dart';

class SavedCourse extends StatelessWidget {
  const SavedCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white, // Set background color to white
        elevation: 4, // Add shadow
        title: const Text(
          'Saved Courses',
          style: TextStyle(color: Colors.black), // Set text color to black
        ),
        centerTitle: true, // Center align the title
        automaticallyImplyLeading: false, 
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            courses.length,
            (index) => Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Material(
                color: Colors.transparent, // Add transparent color to enable tap
                child: GestureDetector(
                  onTap: () {
                    // Navigate to course detail page here
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CourseScreen(),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.grey.withOpacity(0.5), // Shadow color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15), // Adjust border radius as needed
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      width: 420,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(courses[index].thumbnail),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                courses[index].name,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Icon(
                                    Iconsax.flash_1,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "${courses[index].completedPercentage} hr",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const Text(
                                    " · ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const Icon(
                                    Iconsax.clock,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "${courses[index].author} ",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Positioned(
                            top: 1,
                            right: 1,
                            child: IconButton(
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                backgroundColor: Colors.blue,
                                fixedSize: const Size(30, 30),
                              ),
                              iconSize: 20,
                              icon: const Icon(Iconsax.save_21),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
