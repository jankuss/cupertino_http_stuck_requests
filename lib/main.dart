import 'package:cupertino_http/cupertino_http.dart';
import 'package:flutter/material.dart';

void main() {
  final client = CupertinoClient.defaultSessionConfiguration();
  final a = client.get(Uri.parse('https://google.de'));

  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
              future: a,
              builder: (context, response) {
                if (response.connectionState == ConnectionState.waiting) {
                  return const Text('Waiting');
                }

                return const Text('Done');
              }),
        ),
      ),
    ),
  );
}
