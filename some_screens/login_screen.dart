import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Container(color: Colors.white),
            Column(
              children: [
                SizedBox(height: 120),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.teal[600],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 8),
                      Text(
                        'أهلا بك نحن سعداء بعودتك\nمن فضلك قم بتسجيل الدخول',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'رقم الهاتف',
                          prefixIcon: Icon(Icons.person),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'كلمة المرور',
                          prefixIcon: Icon(Icons.lock),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                        ),
                      ),
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'هل نسيت كلمة المرور ؟',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.teal[900],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/otp');
                          },
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ليس لديك حساب ؟',
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'إنشاء حساب',
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
