// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shayar/gotopage.dart';
import 'package:shayar/json_data.dart';
import 'leading_icon.dart';
import 'second.dart';
import 'my_appbar.dart';

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
      title: 'Evergreen Shayri',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.teal,
        ),
        primaryColor: Colors.teal,
      ),
      home: const First(),
    );
  }
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 35, 1, 58),
      appBar: myAppBar("Evergreen Shayri", context, isShowAction: true),
      body: MainDataList(),
    );
  }

  ListView MainDataList() {
    return ListView.builder(
      itemCount: datalist.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(5),
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 137, 255, 243),
              Color.fromARGB(255, 198, 178, 255)
            ])),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                onTap: () {
                  goToPage(context, Second(index: index));
                },
                leading: LeadingIcon(
                  index: index,
                ),
                title: Text(
                  datalist[index][0].toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 22, 68, 64),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
