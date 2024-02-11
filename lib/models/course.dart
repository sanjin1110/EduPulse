class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    author: "Mac Jon",
    completedPercentage: 6,
    name: "Flutter Novice to Ninja",
    thumbnail: "assets/icons/flutter.jpg",
  ),
  Course(
    author: "Ram KC",
    completedPercentage: 10,
    name: "React Novice to Ninja",
    thumbnail: "assets/icons/react.jpg",
  ),
  Course(
    author: "Manoj",
    completedPercentage: 15,
    name: "NodeJs complete guide",
    thumbnail: "assets/icons/node.png",
  ),
  Course(
    author: "Shikhar",
    completedPercentage: 85,
    name: "Flutter Novice to Ninja",
    thumbnail: "assets/icons/flutter.jpg",
  ),
  Course(
    author: "Nitesh ",
    completedPercentage: 10,
    name: "React Novice to Ninja",
    thumbnail: "assets/icons/react.jpg",
  ),
  Course(
    author: "Sabin",
    completedPercentage: 20,
    name: "NodeJs complete guide",
    thumbnail: "assets/icons/node.png",
  ),
];
