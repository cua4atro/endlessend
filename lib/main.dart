import 'package:enless_end/theme_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeApp(),
      home: const EndlessEnd(),
    );
  }
}

class EndlessEnd extends StatefulWidget {
  const EndlessEnd({
    super.key,
  });

  @override
  State<EndlessEnd> createState() => _EndlessEndState();
}

class _EndlessEndState extends State<EndlessEnd> {
  int _clicks = 0;
  int _years = 2023;
  int _incrementValue = 1;

  String event = 'ERA DEL ANTROPOCENO';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('enlessend'),
        actions: [
          Text('$_clicks'),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            Text(
              '$_years',
              style: const TextStyle(fontSize: 64),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              event,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 300,
        child: ElevatedButton(
          child: const Text('¡A DARLE ÁTOMOS!'),
          onPressed: () {
            setState(() {
              _clicks++;
              if (_clicks % 5 == 0) {
                _incrementValue++;
              }
              _years = _years + _incrementValue;
            });
          },
        ),
      ),
    );
  }
}
