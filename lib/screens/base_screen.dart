import 'package:education_app/constants/color.dart';
import 'package:education_app/screens/featuerd_screen.dart';
import 'package:education_app/screens/my_courses.dart';
import 'package:education_app/screens/profile.dart';
import 'package:education_app/screens/saved_courses.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentTab = 0;

  static const List<Widget> screens = <Widget>[
    FeaturedScreen(),
    SavedCourse(),
    MyCoursePage(),
    MyProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 0;
                }),
                child: Column(
                  children: [
                    Icon(
                      currentTab == 0 ? Iconsax.home4 : Iconsax.home4,
                      color: currentTab == 0 ? kPrimaryColor : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 0 ? kPrimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 1;
                }),
                child: Column(
                  children: [
                    Icon(
                      currentTab == 1 ? Iconsax.save_21 : Iconsax.save_21,
                      color: currentTab == 1 ? kPrimaryColor : Colors.grey,
                    ),
                    Text(
                      "Saved",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 1 ? kPrimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 2;
                }),
                child: Column(
                  children: [
                    Icon(
                      currentTab == 2 ? Iconsax.book_14 : Iconsax.book_14,
                      color: currentTab == 2 ? kPrimaryColor : Colors.grey,
                    ),
                    Text(
                      "My Course",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 2 ? kPrimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 3;
                }),
                child: Column(
                  children: [
                    Icon(
                      currentTab == 3
                          ? Iconsax.profile_tick
                          : Iconsax.profile_tick,
                      color: currentTab == 3 ? kPrimaryColor : Colors.grey,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 3 ? kPrimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: screens[currentTab],
    );
  }
}
