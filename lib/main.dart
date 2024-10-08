import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/download_result_listview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) => runApp(const MyApp()));
}

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.platformBrightnessOf(context);

    return MaterialApp(
      title: 'Small Test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: brightness,
        ),
        brightness: brightness,
        useMaterial3: true,
      ),
      builder: (_, __) => MediaQuery.withNoTextScaling(
        child: const MyHomePage(title: 'Small Request timing Test'),
      ),
    );
  }
}

final class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        body: const SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [Expanded(child: DownloadResultListView())],
          ),
        ),
      );
}
