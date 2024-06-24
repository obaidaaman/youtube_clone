import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone/helper/form_divider.dart';
import 'package:youtube_clone/helper/social_buttons.dart';
import 'package:youtube_clone/screens/home/home.dart';
import 'package:youtube_clone/screens/nav_screen/nav_screen.dart';
import 'package:youtube_clone/screens/signUp/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image(
                    width: 90,
                    height: 180,
                    image: AssetImage('assets/yt_logo_dark.png'),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.info,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: mq.height * .025,
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text('Lets fill up the form and fill it correctly'),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                        borderRadius: BorderRadius.circular(24)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24))),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                        borderRadius: BorderRadius.circular(24)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24))),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  const Text(
                    'Forgot Password?',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => NavScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.redAccent,
                    ),
                    width: mq.width,
                    height: mq.height * 0.08,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignupScreen()));
                  },
                  child: Text(
                    'Dont have an account? Sign Up',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TFormDivider(text: 'or Sign In with'),
              SizedBox(
                height: 20,
              ),
              TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
