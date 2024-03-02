import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe_app/components/my_button.dart';
import 'package:food_recipe_app/components/my_textfield.dart';
import 'package:food_recipe_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/breakfast.png'),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: const Color(0xff303030),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Please enter your account here',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xff303030),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const MyTextField(icon: Icons.email_outlined, hintText: 'Email Address', color: Color(0xff303030),),
                const SizedBox(
                  height: 20,
                ),
                const MyTextField(icon: Icons.lock_outline, hintText: 'Password', color: Color(0xff303030),),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forget Password',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  text: 'Login',
                  haveIcon: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Or continue with',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xffA9A9A9),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  onTap: () {},
                  text: 'Google',
                  haveIcon: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t have any account?', style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xffA9A9A9),
                      ),),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Signup!',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
