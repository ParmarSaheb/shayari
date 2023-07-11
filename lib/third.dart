// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayar/my_appbar.dart';
import 'package:shayar/json_data.dart';

class Third extends StatefulWidget {
  int mainIndex;
  int index;
  Third({required this.mainIndex, required this.index, super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(datalist[widget.mainIndex][0].toString(), context),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                      blurStyle: BlurStyle.normal)
                ],
                gradient: LinearGradient(
                  colors: [
                    datalist[widget.mainIndex][3],
                    datalist[widget.mainIndex][4]
                  ],
                ),
              ),
              child: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      datalist[widget.mainIndex][2][widget.index].toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 25, 17, 58),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        child: ElevatedButton.icon(
                            onPressed: () {
                              Clipboard.setData(
                                ClipboardData(
                                  text: datalist[widget.mainIndex][2]
                                          [widget.index]
                                      .toString(),
                                ),
                              ).then((value) => ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                      content:
                                          Text("Shayri copied to clipboard"))));
                            },
                            icon: const Icon(Icons.content_copy),
                            label: const Text("Copy")),
                      ),
                    ),
                    // Expanded(
                    //   child: Container(
                    //     margin: EdgeInsets.all(2),
                    //     child: ElevatedButton.icon(
                    //         onPressed: () {},
                    //         icon: Icon(Icons.edit),
                    //         label: Text("Edit")),
                    //   ),
                    // ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        child: ElevatedButton.icon(
                            onPressed: () {
                              Share.share(datalist[widget.mainIndex][2]
                                      [widget.index]
                                  .toString());
                            },
                            icon: const Icon(Icons.share),
                            label: const Text("Share")),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
