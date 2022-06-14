import 'package:exemplo_ifood/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.white,
          toolbarTextStyle: const TextTheme(headline6: TextStyle(color: Colors.black)).bodyText2,
          titleTextStyle: const TextTheme(headline6: TextStyle(color: Colors.black)).headline6
        ),
        tabBarTheme: TabBarTheme.of(context).copyWith(
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey[500],
          labelStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
        )
      ),
      home: const HomePage(),
    );
  }
}
