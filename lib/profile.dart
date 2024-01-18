import 'package:flutter/material.dart';

class User {
  String name;
  int age;
  double weight;
  double height;
  String profilePictureUrl;

  User({
    required this.name,
    required this.age,
    required this.weight,
    required this.height,
    required this.profilePictureUrl,
  });
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final User _user = User(
    name: 'John Doe',
    age: 25,
    weight: 70.0,
    height: 175.0,
    profilePictureUrl: 'https://example.com/profile_picture.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              _editProfile(context);
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color.fromARGB(255, 33, 33, 33),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(_user.profilePictureUrl),
                    ),
                  ),
                  const SizedBox(height: 55),
                  Text(
                    'Name: ${_user.name}',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Age: ${_user.age}',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Weight: ${_user.weight} kg',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Height: ${_user.height} cm',
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: _logout,
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                          child: const Text('Logout'),
                        ),
                        const SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: _deleteAccount,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 126, 158, 155)),
                          child: const Text('Delete Account'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _editProfile(BuildContext context) {
    // Implement the logic to navigate to the edit profile screen
    // where the user can modify their profile details.
    // You might want to use Navigator.push and pass the current user data.
    print('Edit Profile pressed');
  }

  void _logout() {
    // Implement the logic to handle user logout.
    // You might want to navigate to the login screen or perform any other action.
    print('Logout pressed');
  }

  void _deleteAccount() {
    // Implement the logic to handle account deletion.
    // You might want to show a confirmation dialog before deleting the account.
    print('Delete Account pressed');
  }
}
