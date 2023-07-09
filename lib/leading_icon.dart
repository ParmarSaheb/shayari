
// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

import 'data.dart';

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
        image: DecorationImage(
          image: AssetImage(Datas.img[index]),
        ),
      ),
    );
  }
}
