// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shayar/gotopage.dart';
import 'package:shayar/leading_icon.dart';
import 'package:shayar/json_data.dart';
import 'package:shayar/third.dart';

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
      backgroundColor: const Color.fromARGB(255, 35, 1, 58),
      appBar: myAppBar(datalist[widget.index][0].toString(), context),
      body: ListView.builder(
        itemCount: datalist[widget.index][2].length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    datalist[widget.index][3],
                    datalist[widget.index][4],
                  ],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 2),
                child: ListTile(
                  leading: LeadingIcon(index: widget.index),
                  trailing: IconButton(
                    onPressed: () {
                      goToPage(
                        context,
                        Third(mainIndex: widget.index, index: index),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  title: Text(
                    datalist[widget.index][2][index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  onTap: () {
                    goToPage(
                      context,
                      Third(mainIndex: widget.index, index: index),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
