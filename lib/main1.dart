// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shayar/leading_icon.dart';
import 'package:shayar/self/json_data.dart';

import 'my_appbar.dart';

class Second extends StatefulWidget {
  int index;
  Second({required this.index, super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  List myDataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 211, 201),
      appBar: myAppBar(datalist[widget.index][0].toString()),
      body: ListView.builder(
        itemCount: datalist[widget.index][2].length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              tileColor: const Color.fromARGB(255, 216, 255, 251),
              leading: LeadingIcon(index: widget.index),
              title: Text(datalist[widget.index][2][index]),
            ),
          );
        },
      ),
    );
  }
}
