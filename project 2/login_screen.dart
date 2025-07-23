import 'package:flutter/material.dart';
import 'otp_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  final phoneController = TextEditingController();
  final passController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'تسجيل الدخول',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: 'رقم الهاتف'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'من فضلك أدخل رقم الهاتف';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(hintText: 'كلمة المرور'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'أدخل كلمة المرور';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => OtpScreen()),
                    );
                  }
                },
                child: Text('تسجيل الدخول'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 222, 238),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => SignUpScreen()),
                  );
                },
                child: Text('إنشاء حساب'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 222, 238),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
