import 'package:flutter/material.dart';

AppBar myAppBar(String title) {
  return AppBar(
    title: Text(
      title,
     
    ),
    actions: const [
      Icon(Icons.share),
      Icon(Icons.more_vert),
    ],
  );
}
