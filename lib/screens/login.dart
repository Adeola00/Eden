import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Welcome back ",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.flutter_dash_sharp, size: 40)
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: TextField(
                        decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(12.0)),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homePage');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/passPage');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not a member?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/regPage');
                    },
                    child: const Text(
                      "Register now",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
