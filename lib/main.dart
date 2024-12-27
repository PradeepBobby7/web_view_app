import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(Workerwaala());
}

class Workerwaala extends StatelessWidget {
  const Workerwaala({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        '/webViewScreen': (context) => WebViewScreen()
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WorkerWaala'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/webViewScreen');
            },
            child: const Text("Open Website")),
      ),
    );
  }
}

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://creatorapp.zohopublic.in/sathishkumarchandrasekar/dinesh-superstore1/form-embed/Orders/a6f9n14HKGzbkMbP1SOvTHO0kPaB8vvWpeedE8b4SpfKRsyT6Qs3wmUWg8UkR9CPJwrseMMBrXuBpKYbZeqQG3tW5hPrDTgyJGjA"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registriction"),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
