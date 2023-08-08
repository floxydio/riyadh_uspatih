import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Ekskul extends StatefulWidget {
  const Ekskul({Key? key}) : super(key: key);

  @override
  _EkskulState createState() => _EkskulState();
}

class _EkskulState extends State<Ekskul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ekskul',
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
      initialUrl: 'https://siln-riyadh.kemdikbud.go.id/ekskul/',
    );
  }
}

