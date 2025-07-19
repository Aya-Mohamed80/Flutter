import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: SignUpPage(), debugShowCheckedModeBanner: false));
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700], 
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                hintText: "Username",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 15),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text("Sign Up", style: TextStyle(color: Colors.blue[700])),
            ),

            SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "Sign up with Google",
                style: TextStyle(color: Colors.blue[700]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
