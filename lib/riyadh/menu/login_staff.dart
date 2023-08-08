import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginStaff extends StatefulWidget {
  const LoginStaff({Key? key}) : super(key: key);

  @override
  _LoginStaffState createState() => _LoginStaffState();
}

class _LoginStaffState extends State<LoginStaff> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Orang Tua',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: BackButtonIcon(),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
      ),
      body: _buildWebView(),
    );
  }
  Widget _buildWebView() {
    return WebView(
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: 'https://atten-sekolahriyadh.my.id/auth/ortu/login',
    );
  }
}

