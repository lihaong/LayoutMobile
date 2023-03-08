import 'package:flutter/material.dart';
String username = "";
String password = "";
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    title: '123200054 / Muhammad Fajar Andikha',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.blue,
    ),
    home: FirstRoute(),
  ));
}

showAlertDialog(BuildContext context) {

  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Alert"),
    content: Text("Username atau Password Salah."),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
TextEditingController getUser = new TextEditingController();
TextEditingController getPass = new TextEditingController();
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo (size: 60),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: getUser,
                  decoration: InputDecoration(
                    labelText: 'username',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: getPass,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container (
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text('Login'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(onPressed: (){}, child: Text('Forgot Password', style: TextStyle(color: Colors.grey),))


              ],
            )),
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
      onChanged: (value) {
        username = value;
      },
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
      onChanged: (value) {
        password = value;
      },
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

Widget _loginButton(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical:
    10),
    width: MediaQuery.of(context).size.width,
    child: ElevatedButton(
      onPressed: () {
        String text = "";
        if (username == "flutterMobile" && password ==
            "flutter123"){
          text = "Login Success";
        } else {
          text = "Login Failed";
        }
        SnackBar snackBar = SnackBar(
          content: Text(text),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const Text('Login'),
    ),
  );
}

