import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginGuru extends StatefulWidget {
  const LoginGuru({Key? key}) : super(key: key);

  @override
  _LoginGuruState createState() => _LoginGuruState();
}

class _LoginGuruState extends State<LoginGuru> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Guru',
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
      initialUrl: 'https://absensi70.jawaireng.com/auth/guru/login',
    );
  }
}
