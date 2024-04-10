import 'package:flutter/material.dart';
import 'package:store_app/StoreTask/store_form.dart';
import 'package:store_app/UItask/store_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StoreUI(),
    );
  }
}
