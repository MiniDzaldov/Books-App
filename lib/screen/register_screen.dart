import 'dart:math';

import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  RegisterScreen({required this.toggleTheme, required this.isDarkMode});

  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child:   Column(
        children: [
          _buildTextField(userNameController, 'User Name'),
          SizedBox(height: 10,),
          _buildTextField(emailController, 'Email'),
          SizedBox(height: 10,),
          _buildTextField(passwordController, 'Password'),
          SizedBox(height: 10,),


          
        ],
      ),
        ),
      ),
    
    );
  }
   Widget _buildTextField(TextEditingController controller, String labelText,
      {bool obscureText = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      obscureText: obscureText,
    );
  }
}
