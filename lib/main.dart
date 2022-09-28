import 'package:bwa_movie/ui/pages/home_page.dart';
import 'package:bwa_movie/ui/pages/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routName,
      routes: {
        HomePage.routName: (context) => const HomePage(),
        SearchPage.routName: (context) => const SearchPage(),
      },
    );
  }
}
