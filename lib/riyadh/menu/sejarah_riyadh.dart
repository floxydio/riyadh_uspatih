import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SejarahRiyadh extends StatefulWidget {
  const SejarahRiyadh({Key? key}) : super(key: key);

  @override
  _SejarahRiyadhState createState() => _SejarahRiyadhState();
}

class _SejarahRiyadhState extends State<SejarahRiyadh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sejarah',
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
      initialUrl: 'https://siln-riyadh.kemdikbud.go.id/sejarah-sir/',
    );
  }
}

