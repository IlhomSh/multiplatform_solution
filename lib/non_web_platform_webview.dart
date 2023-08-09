import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/app_platform.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

Widget webView(String link) =>
    AppPlatform.isMobile
        ? WebViewWidget(controller: WebViewController()
      ..loadRequest(Uri.parse(link))):HyperLink(link: link,);



class HyperLink extends StatelessWidget {
      final String link;

      const HyperLink({super.key, required this.link});


      @override
      Widget build(BuildContext context) {
            return GestureDetector(
                  onTap:() {
                        launchUrl(Uri.parse(link));
                  },
                  child: Center(child: Text(link, style:const TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),),),
            );
      }
}
