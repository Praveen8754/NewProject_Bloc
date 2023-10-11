import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer';


class Loginrepo {
  static Future<bool> validateuserandpassword(String username, String password) async {
    final Map<String, String> data = {
      'username': username,
      'password': password,
    };

    final response = await http.post(
      Uri.parse('https://your-server.com/login'),
      // Replace with your server URL
      body: json.encode(data),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      final user = User.fromJson(responseData);

// Check if the login was successful
      if (user.username.isNotEmpty && user.password.isNotEmpty) {
// Successful login, navigate to the next screen
        // Navigator.pushReplacementNamed(context as BuildContext, '/home'); // Replace with your route
        return true;
      } else {
// Handle invalid login
        /*  ScaffoldMessenger.of(context as BuildContext).showSnackBar(
        const SnackBar(
          content: Text('Invalid username or password'),

        ),
      );*/
        return false;
      }
    }
    else {
// Handle server error
      /*ScaffoldMessenger.of(context as BuildContext).showSnackBar(
      const SnackBar(
        content: Text('Server error'),
      ),
    );*/
      return false;
    }
  }
}

class User {
  final String username;
  final String password;

  User({required this.username, required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(username: json['username'], password: json['password']);
  }


}