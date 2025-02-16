import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 40,
            right: 20,
            child: Icon(
              Icons.arrow_forward,
              size: 30,
              color: Color(0xFFD9D9D9),
            ),
          ),

          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 122),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 129,
                        height: 116,
                        decoration: BoxDecoration(
                          color: Color(0xFF059FB3),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned(
                        top: 25,
                        left: 11,
                        right: 11,
                        child: Container(
                          width: 107.23,
                          height: 95.7,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 26,
                        child: Icon(
                          Icons.airplanemode_active,
                          size: 35.47,
                          color: Color(0xFFB9DBE2),
                        ),
                      ),
                      Positioned(
                        top: 60.69,
                        child: Container(
                          width: 41.12,
                          height: 29,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16.27),
                          ),
                          child: Icon(
                            Icons.wifi,
                            size: 25,
                            color: Color(0xFFB9DBE2),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 50),
                  Text(
                    "مشوارك",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF059FB3),
                    ),
                  ),
                  SizedBox(height: 30),

                  Container(
                    width: 430,
                    height: 600,
                    decoration: BoxDecoration(
                      color: Color(0xFF059FB3),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 60),

                        _buildTextField(
                          hintText: "اسم المستخدم أو الإيميل",
                          icon: Icons.person,
                          marginLeft: 40,
                          marginRight: 44,
                        ),
                        SizedBox(height: 50),
                        _buildTextField(
                          hintText: "كلمة المرور",
                          icon: Icons.lock,
                          obscureText: true,
                          marginLeft: 40,
                          marginRight: 44,
                        ),
                        SizedBox(height: 104),

                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: 80,
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.27),
                            ),
                          ),
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                              color: Color(0xFF059FB3),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),

                        Text(
                          "هل نسيت كلمة المرور؟",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(height: 15),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: Color(0xFF1877F2),
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(width: 20),
                            IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                color: Color(0xFFDB4437),
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    required IconData icon,
    bool obscureText = false,
    required double marginLeft,
    required double marginRight,
  }) {
    return Container(
      width: 346,
      height: 57,
      margin: EdgeInsets.only(left: marginLeft, right: marginRight),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Color(0xFFD9D9D9), width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: obscureText,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Color(0xFFD9D9D9)),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 15),
          Icon(icon, color: Color(0xFFD9D9D9), size: 24),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}