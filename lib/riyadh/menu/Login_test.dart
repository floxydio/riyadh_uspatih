import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/gestures.dart';

class LoginTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Ortu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard Ortu'),
        ),
        body: Stack(
          children: [
            //... widgets that render behind the column
            WebView(
              initialUrl: 'https://inputtypes.com',
              javascriptMode: JavascriptMode.unrestricted,
              gestureRecognizers: Set()
                ..add(
                  Factory<DragGestureRecognizer>(
                        () => VerticalDragGestureRecognizer(),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}