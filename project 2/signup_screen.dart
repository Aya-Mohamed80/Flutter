import 'package:flutter/material.dart';
import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  final nameController = TextEditingController();
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
              SizedBox(height: 80),
              Text(
                'إنشاء حساب',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'الاسم'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'اكتب اسمك';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(hintText: 'رقم الهاتف'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'اكتب رقمك';
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
                    return 'اكتب كلمة مرور';
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
                      MaterialPageRoute(builder: (_) => HomeScreen()),
                    );
                  }
                },
                child: Text('تسجيل'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 100, 222, 238),
                  minimumSize: Size(double.infinity, 50),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
