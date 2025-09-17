import 'package:flutter/material.dart';
import 'package:solid_hello/app/features/hello_there/presentation/pages/hello_there.dart';

/// Root widget of the application.
/// Displays the `HelloThere` page as the home screen.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hello There App for Solid Software',
      home: HelloThere(),
      debugShowCheckedModeBanner: false,
    );
  }
}
