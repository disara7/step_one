import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'home.dart'; // Import your HomePage file

class NotificationsScreen extends StatelessWidget {
  final List<String> notifications;
  final int _currentIndex; // Add a variable to track the current index

  const NotificationsScreen({super.key, required this.notifications, required int currentIndex})
      : _currentIndex = currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.black,
        child: _buildNotificationsList(context),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTabTapped: (index) {
          // Note: No need for setState in a StatelessWidget
          if (index == 1) {
            // Navigate to notifications screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationsScreen(
                  notifications: const [],
                  currentIndex: index,
                ),
              ),
            );
          } else if (index == 0) {
            // Navigate to the Home screen when Home icon is tapped
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          }
        },
      ),
    );
  }

  Widget _buildNotificationsList(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white.withOpacity(0.2),
          margin: const EdgeInsets.all(8),
          child: ListTile(
            title: Text(
              notifications[index],
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
