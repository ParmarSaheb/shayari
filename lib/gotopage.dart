import 'package:flutter/material.dart';

void goToPage(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: ((context) => widget),
    ),
  );
}
