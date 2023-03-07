import 'package:flutter/material.dart';

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

