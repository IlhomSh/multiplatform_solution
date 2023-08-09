import 'dart:html';
import 'dart:ui' as ui;
import 'dart:math';

import 'package:flutter/material.dart';

Widget webView(String link) => WebPlatformWebView(link: link);

class WebPlatformWebView extends StatelessWidget {
  final String link;

  const WebPlatformWebView({Key? key, required this.link});

  @override
  Widget build(BuildContext context) {
    final id = Random().nextInt.toString();

    ui.platformViewRegistry.registerViewFactory(id, (int viewId) {
      var iframe = IFrameElement();
      iframe.src = link;
      return iframe;
    });

    return HtmlElementView(viewType: id);
  }
}
