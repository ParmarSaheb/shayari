// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shayar/data.dart';
import 'package:shayar/leading_icon.dart';

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
  void initState() {
    super.initState();
    switch (widget.index) {
      case 0:
        {
          myDataList = Datas.h1;
          break;
        }
      case 1:
        {
          myDataList = Datas.h2;
          break;
        }
      case 2:
        {
          myDataList = Datas.h3;
          break;
        }
      case 3:
        {
          myDataList = Datas.h4;
          break;
        }
      case 4:
        {
          myDataList = Datas.h5;
          break;
        }
      case 5:
        {
          myDataList = Datas.h6;
          break;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView.builder(
        itemCount: myDataList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: LeadingIcon(index: widget.index),
              title: Text(myDataList[index]),
            ),
          );
        },
      ),
    );
  }
}
