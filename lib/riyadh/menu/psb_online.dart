import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PpdbOnline extends StatefulWidget {
  const PpdbOnline({Key? key}) : super(key: key);

  @override
  _PpdbOnlineState createState() => _PpdbOnlineState();
}

class _PpdbOnlineState extends State<PpdbOnline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PPDB Online',
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
      initialUrl: 'http://siln-riyadh.kemdikbud.go.id/ppdb/',
    );
  }
}

