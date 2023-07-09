
  import 'package:flutter/material.dart';

AppBar MyAppBar() {
    return AppBar(
      title: const Text("Love Shayri"),
      actions: const [
        Icon(Icons.share),
        Icon(Icons.more_vert),
      ],
    );
  }