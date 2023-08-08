import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginSiswa extends StatefulWidget {
  const LoginSiswa({Key? key}) : super(key: key);

  @override
  _LoginSiswaState createState() => _LoginSiswaState();
}

class _LoginSiswaState extends State<LoginSiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Siswa',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: BackButtonIcon(),
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.blue,
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
      initialUrl: 'https://atten-sekolahriyadh.my.id/auth/siswa/login',
    );
  }
}

