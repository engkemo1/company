import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/screens/authentication/signUp_view.dart';
import 'package:responsive_admin_dashboard/screens/components/drawer_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Admin Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpView(),

    );
  }
}

