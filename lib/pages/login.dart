import 'package:agent/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:agent/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: Text('LOGIN'),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                 Navigator.push(context, 
                                MaterialPageRoute(builder : (context)=>const SignupPage()),
                                );
              },
              child: Text('Create an account'),
            ),
          ],
        ),
      ),
    );
  }
}