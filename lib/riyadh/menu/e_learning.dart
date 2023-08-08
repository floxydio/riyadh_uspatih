import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Elearning extends StatefulWidget {
  const Elearning({Key? key}) : super(key: key);

  @override
  _ElearningState createState() => _ElearningState();
}

class _ElearningState extends State<Elearning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'e-Learning',
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
      initialUrl: 'https://siln-riyadh.kemdikbud.go.id/e-learning/',
    );
  }
}

