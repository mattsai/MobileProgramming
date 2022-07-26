import 'package:flutter/material.dart';
import 'strings.dart' as strings;
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(const GHFlutterApp());

class GHFlutterApp extends StatelessWidget {
  const GHFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wawarita',
      home: GHFlutter(),

      //   home: Scaffold(
      //     appBar: AppBar(
      //       title: const Text(appTittle),
      //     ),
      //     body: const Center(
      //       child: Text('GHFlutter App'),
      //     ),
      //   ),
    );
  }
}

class GHFlutter extends StatefulWidget {
  const GHFlutter({Key? key}) : super(key: key);

  @override
  State<GHFlutter> createState() => _GHFlutterState();
}

class _GHFlutterState extends State<GHFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.appTittle),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Color.fromARGB(255, 249, 174, 244),
      body: Center(
        child: Text(strings.centerText),
      ),
    );
  }
}
