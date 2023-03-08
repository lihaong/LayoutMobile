import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
        ),
        body: Column(
            children: [
              _usernameField(),
              _passwordField(),
            ]
        ),
      ),
    );
  }
}

Widget _usernameField() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical:
    10),
    child: TextFormField(
      enabled: true,
      decoration: const InputDecoration(
        hintText: 'Username',
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    ),
  );
}

Widget _passwordField() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical:
    10),
    child: TextFormField(
      enabled: true,
      obscureText: true,
      decoration: const InputDecoration(
        hintText: 'Password',
        contentPadding: const EdgeInsets.all(8.0),
        border: OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
    ),
  );
}



  