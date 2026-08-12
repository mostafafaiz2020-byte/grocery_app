import 'package:flutter/material.dart';
import 'package:lec10/screens/loging.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28.42),

                Center(child: Image.asset('assets/images/carrot.png')),

                SizedBox(height: 80),

                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  'Enter your credentials to continue',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7C7C7C),
                  ),
                ),

                SizedBox(height: 40),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff53B175)),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                TextFormField(
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff53B175)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your email";
                    }

                    if (!value.contains('@')) {
                      return "Enter a valid email";
                    }

                    return null;
                  },
                ),

                SizedBox(height: 30),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: Icon(Icons.visibility_off),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff53B175)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your password";
                    }

                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }

                    if (!RegExp(r'[a-z]').hasMatch(value)) {
                      return "Password must contain lowercase letters";
                    }

                    if (!RegExp(r'[A-Z]').hasMatch(value)) {
                      return "Password must contain uppercase letters";
                    }

                    if (!RegExp(r'[0-9]').hasMatch(value)) {
                      return "Password must contain numbers";
                    }

                    return null;
                  },
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff7C7C7C),
                          ),
                          children: [
                            TextSpan(text: 'By continuing you agree to our '),
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(color: Color(0xff53B175)),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Privacy Policy.',
                              style: TextStyle(color: Color(0xff53B175)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      print("Valid");
                    }
                  },
                  child: Container(
                    height: 67,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xff53B175),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xffFFF9FF),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogingScrreen(),
                          ),
                        );
                      },
                      child: Text(
                        " Login",
                        style: TextStyle(
                          color: Color(0XFF53B175),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
