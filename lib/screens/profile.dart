import 'package:education_app/screens/change_password.dart';
import 'package:education_app/screens/edit_profile.dart';
import 'package:education_app/screens/login.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set background color to white
        elevation: 4, // Add shadow
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white), // Set text color to black
        ),
        centerTitle: true, // Center align the title
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue, // Match with appbar color
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15), // Bottom left radius
                bottomRight: Radius.circular(15), // Bottom right radius
              ),
            ),
            padding: const EdgeInsets.symmetric(
                vertical: 12, horizontal: 16), // Add padding

            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), // Adding radius
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        15), // Applying same radius to clipRRect
                    child: Image.asset(
                      'assets/icons/userimage.png',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sanjin Thapa',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'sanjin@gmail.com',
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.edit,
                color: Colors.blue[600]), // Set color to blueish
            title: const Text('Edit Profile'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const EditProfilePage(),
                ),
              );
            },
            trailing: Icon(Icons.arrow_right,
                color: Colors.blue[600]), // Set color to blueish
          ),
          ListTile(
            leading: Icon(Icons.lock,
                color: Colors.blue[600]), // Set color to blueish
            title: const Text('Change Password'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ChangePasswordPage(),
                ),
              );
            },
            trailing: Icon(Icons.arrow_right,
                color: Colors.blue[600]), // Set color to blueish
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip,
                color: Colors.blue[600]), // Set color to blueish
            title: const Text('Privacy Policy'),
            onTap: () {
              // Navigate to privacy policy page
            },
            trailing: Icon(Icons.arrow_right,
                color: Colors.blue[600]), // Set color to blueish
          ),
          ListTile(
            leading: Icon(Icons.description,
                color: Colors.blue[600]), // Set color to blueish
            title: const Text('Terms & Conditions'),
            onTap: () {
              // Navigate to terms & conditions page
            },
            trailing: Icon(Icons.arrow_right,
                color: Colors.blue[600]), // Set color to blueish
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginWidget(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4B39EF),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: 44,
                alignment: Alignment.center,
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
