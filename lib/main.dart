// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shayar/self/json_data.dart';
import 'leading_icon.dart';
import 'main1.dart';
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
      title: 'Love Shayari',
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
  Color bgcolor = const Color.fromARGB(255, 170, 211, 201);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: myAppBar("Love Shayri"),
      body: MainDataList(),
    );
  }

  ListView MainDataList() {
    return ListView.builder(
      itemCount: datalist.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => Second(index: index)),
                ),
              );
            },
            tileColor: const Color.fromARGB(255, 202, 250, 245),
            leading: LeadingIcon(
              index: index,
            ),
            title: Text(
              datalist[index][0].toString(),
            ),
          ),
        );
      },
    );
  }
}
