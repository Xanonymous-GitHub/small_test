import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:small_test/download_result.dart';
import 'package:small_test/downloader.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) => runApp(const MyApp()));
}

Future<List<DownloadResult>> _submitDownloadTask() {
  final client = http.Client();
  final sourcePaths = {
    Uri.parse('https://image-test-a.xcc.tw/test-img'),
    Uri.parse('https://image-test-b.xcc.tw/test-img'),
    Uri.parse('https://image-test-c.xcc.tw/test-img'),
  };
  final downloader = Downloader(sourcePaths: UnmodifiableSetView(sourcePaths), client: client);
  return downloader.fetchAll();
}

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Small Test',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Small Request timing Test'),
      );
}

final class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
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

final class DownloadResultListView extends StatefulWidget {
  const DownloadResultListView({super.key});

  @override
  State<DownloadResultListView> createState() => _DownloadResultListViewState();
}

final class _DownloadResultListViewState extends State<DownloadResultListView> {
  final List<DownloadResult> _downloadResults = [];

  void _onDownloadButtonClicked() {
    _submitDownloadTask().then((downloadResults) {
      setState(() {
        _downloadResults.insertAll(0, downloadResults);
      });
    });
  }

  Widget buildDownloadResultItem(BuildContext context, int index) {
    final downloadResult = _downloadResults[index];
    return Card(
      child: ListTile(
        title: Text(downloadResult.url, textAlign: TextAlign.center),
        subtitle: Text(
          downloadResult.time == double.maxFinite ? 'ERROR' : '${downloadResult.time} ms',
          textAlign: TextAlign.right,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemBuilder: buildDownloadResultItem,
              itemCount: _downloadResults.length,
            ),
          ),
          ElevatedButton(
            onPressed: _onDownloadButtonClicked,
            child: const Text('Download'),
          ),
        ],
      );
}
