// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:shayar/json_data.dart';

class LeadingIcon extends StatelessWidget {
  var index;

  LeadingIcon({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(datalist[index][1].toString()),
        ),
      ),
    );
  }
}
