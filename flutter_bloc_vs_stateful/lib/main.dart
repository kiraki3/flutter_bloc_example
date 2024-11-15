import 'package:flutter/material.dart';
import 'src/bloc_pattern/ui/bloc_display_widget.dart';
import 'src/stateful/ui/plus_stateful_display_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.grey[400]),
                child: const Text("bloc 패턴"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const BlocDisplayWidget();
                  }));
                },
              ),
            ),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue[400]),
                child: const Text("기본 stateful"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const PlusStatefulDisplayWidget();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
