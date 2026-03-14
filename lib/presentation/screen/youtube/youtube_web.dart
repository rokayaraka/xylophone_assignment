import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Youtube extends StatelessWidget {
  Youtube({super.key});
  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
         
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onHttpError: (HttpResponseError error) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://www.youtube.com/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://www.youtube.com/'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(child: WebViewWidget(controller: controller)),
  );
  }
}