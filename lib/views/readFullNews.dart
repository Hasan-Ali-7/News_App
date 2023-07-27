import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:News/logic/models/article.dart';

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({required this.articleURL, super.key}); // MODIFY

  final String articleURL;                        // ADD

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}
class _WebViewContainerState extends State<WebViewContainer> {
  var loadingPercentage = 0;
  // REMOVE the controller that was here

  @override
  void initState() {
    super.initState();
    // Modify from here...
    controller.setNavigationDelegate(
      NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ),
    );
    // ...to here.
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebViewWidget(
          controller: controller,                     // MODIFY
        ),
        if (loadingPercentage < 100)
          LinearProgressIndicator(
            value: loadingPercentage / 100.0,
          ),
      ],
    );
  }

WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://www.youtube.com/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse('https://flutter.dev'));

}