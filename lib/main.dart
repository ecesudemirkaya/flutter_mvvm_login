import 'package:flutter/material.dart';

import 'views/common/login/view/login_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginView(),
    );
  }
}
