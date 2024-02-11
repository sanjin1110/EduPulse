import 'package:education_app/models/course.dart';
import 'package:education_app/screens/saved_courses.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/color.dart';
import '../screens/quick_screen.dart';

class QuickAndFastList extends StatelessWidget {
  const QuickAndFastList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Featured Courses",
                  style: Theme.of(context).textTheme.bodyLarge),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuickFoodsScreen(),
                  ),
                ),
                child: Text(
                  "See all",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              courses.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SavedCourse(),
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
                    width: 200,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 130,
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
                                  Iconsax.clock,
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
                                  Iconsax.flash_1,
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
      ],
    );
  }
}
