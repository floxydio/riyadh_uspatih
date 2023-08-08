import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MekanismePpdbSmp extends StatefulWidget {
  const MekanismePpdbSmp({Key? key}) : super(key: key);

  @override
  _MekanismePpdbSmpState createState() => _MekanismePpdbSmpState();
}

class _MekanismePpdbSmpState extends State<MekanismePpdbSmp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mekanisme PPDB SMP',
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
      initialUrl: 'http://ppdb.thawalibpadangpanjang.sch.id/tutorial',
    );
  }
}

