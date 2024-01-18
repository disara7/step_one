import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'package:step_one/notifications.dart';
import 'package:step_one/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 25,
              ),
              const SizedBox(
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Summary',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              _buildCaloriesBurntCard(),
              _buildTipsCard(),
              _buildActionButton(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTabTapped: (index) {
          setState(() {
            _currentIndex = index;
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationsScreen(
                    currentIndex: 1,
                    notifications: [],
                  ),
                ),
              );
            } else if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            }
          });
        },
      ),
    );
  }

  Widget _buildCaloriesBurntCard() {
    int caloriesBurnt = 800; // Replace with actual calories burnt data
    double progressValue = caloriesBurnt / 1000;

    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Colors.white.withOpacity(0.15),
      child: Padding(
        padding: const EdgeInsets.all(23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Calories Burnt Today',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the row horizontally
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 180,
                      width: 180,
                      child: CircularProgressIndicator(
                        value: progressValue,
                        strokeWidth: 14,
                        color: Colors.teal,
                      ),
                    ),
                    Text(
                      '$caloriesBurnt kcal',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 185, 182, 177),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTipsCard() {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            20), // Adjust the value for more or less curvature
      ),
      color: Colors.white.withOpacity(0.15), // Set background transparency
      child: const Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Running Tips',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tip 1: Stay hydrated during your run to improve performance.',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Tip 2: Include warm-up and cool-down exercises in your routine.',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Tip 3: Choose comfortable running shoes to prevent injuries.',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton() {
    return Container(
        margin:
            const EdgeInsets.only(left: 120, right: 120, bottom: 20, top: 10),
        child: ElevatedButton(
          onPressed: () {
            // Add functionality for the button
            print('Button Pressed');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  10.0), // Set your desired border radius here
            ),
          ),
          child: const Text(
            'Track My Path',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ));
  }
}
