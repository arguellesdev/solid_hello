import 'package:flutter/material.dart';
import 'package:solid_hello/app/features/hello_there/presentation/pages/hello_there.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello There App for Solid Software',
      home: const HelloThere(),
      debugShowCheckedModeBanner: false,
    );
  }
}
