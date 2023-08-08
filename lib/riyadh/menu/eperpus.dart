import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Eperpus extends StatefulWidget {
  const Eperpus({Key? key}) : super(key: key);

  @override
  _EperpusState createState() => _EperpusState();
}

class _EperpusState extends State<Eperpus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'e-Perpus',
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
      initialUrl: 'https://sites.google.com/view/eperpus/beranda',
    );
  }
}

