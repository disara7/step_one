import 'package:flutter/material.dart';
import 'home.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Step One!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  _showLoginDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Set your desired border radius here
                  ),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showSignUpDialog(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Set your desired border radius here
                ),
              ),
              child: const Text('Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  void _showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String email = '';
        String password = '';

        return AlertDialog(
          title: const Text('Login'),
          content: SizedBox(
            height: 150,
            child: Column(
              children: [
                TextField(
                  onChanged: (value) => email = value,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (value) => password = value,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement your login logic here
                Navigator.pop(context); // Close the login dialog
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: const Text('Log In'),
            ),
          ],
        );
      },
    );
  }

  void _showSignUpDialog(BuildContext context) {
    String name = '';
    int age = 0;
    String email = '';
    String password = '';
    String gender = 'Male'; // Default gender

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Sign Up'),
          content: SizedBox(
            height: 460,
            child: Column(
              children: [
                TextField(
                  onChanged: (value) => name = value,
                  decoration: const InputDecoration(labelText: 'Name'),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (value) => age = int.parse(value),
                  decoration: const InputDecoration(labelText: 'Age'),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (value) => email = value,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (value) => password = value,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password'),
                ),
                const SizedBox(height: 10),
                const ListTile(
                  title: Text('Gender'),
                ),
                RadioListTile(
                  title: const Text('Male'),
                  value: 'Male',
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value.toString();
                  },
                ),
                RadioListTile(
                  title: const Text('Female'),
                  value: 'Female',
                  groupValue: gender,
                  onChanged: (value) {
                    gender = value.toString();
                  },
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                // // Implement your sign-up logic here
                // User? user = await _authService.signUpWithEmailAndPassword(
                //   email,
                //   password,
                //   name,
                // );

                // if (user != null) {
                //   Navigator.pop(context); // Close the sign-up dialog
                //   _showSignUpSuccessDialog(context);

                // Redirect to home.dart after successful sign-up
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: const Text('Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        );
      },
    );
  }

  void _showSignUpSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Sign Up Successful'),
          content: const Text(
              'Your Step One account has been successfully created.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Set your desired border radius here
                ),
              ),
              child: const Text('OK',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        );
      },
    );
  }
}
