import 'package:flutter/material.dart';
import 'package:relisa/page/event_relawan/event_layout.dart';
import 'register.dart';
import 'package:http/http.dart' as http;

String loggedInUsername = '';

Future<void> loginUser(String email, String password) async {
  final apiUrl = '';

  try {
    final response = await http.post(Uri.parse(apiUrl), body: {
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      print('Sukses Login!');
    } else {
      print('Gagal Login ${response.statusCode}');
    }
  } catch (error) {
    print('Telah terjadi kesalahan');
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Image.asset(
                  'assets/images/relisa.png',
                  height: 80,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.all(15.0),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: EdgeInsets.all(15.0),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          rememberMe = value ?? false;
                        });
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ingat saya',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(), // Added Spacer to push the next widgets to the right
                    GestureDetector(
                      onTap: () {
                        // Add action for "Lupa Kata Sandi?"
                      },
                      child: Text(
                        'Lupa Kata Sandi?',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Belum punya akun?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        softWrap: true,
                        'Daftar',
                        style: TextStyle(
                          color: Colors.blue[500],
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    // Add the login logic here
                    loginUser(emailController.text, passwordController.text);
                    // For now, navigate to another screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventLayout()),
                    );
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
