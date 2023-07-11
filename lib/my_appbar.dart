import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar(String title, BuildContext context,
    {bool isShowAction = false}) {
  return PreferredSize(
    preferredSize: const Size(double.infinity, 70),
    child: Center(
      child: Container(
        height: 100,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.teal, Colors.purple])),
        child: SafeArea(
          child: Center(
            child: ListTile(
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Wrap(
                children: [
                  isShowAction
                      ? IconButton(
                          tooltip: "Share",
                          splashColor: Colors.black.withOpacity(0.2),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                content: const Text(
                                    "Application is under construction..this function is available as soon."),
                                title: const Text("Not Working..!"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("OK"))
                                ],
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.share,
                            size: 30,
                            color: Colors.white,
                          ))
                      : const SizedBox(
                          height: 0,
                        ),
                  isShowAction
                      ? PopupMenuButton(
                          shadowColor: Colors.teal,
                          elevation: 10,
                          tooltip: "Menu",
                          color: Colors.white,
                          iconSize: 30,
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              child: ListTile(
                                onTap: () {
                                  showAboutDialog(
                                    context: (context),
                                    applicationName: "Love Shayri",
                                    applicationVersion: "1.0.1",
                                    children: [
                                      const Text("Managed by Nayan Parmar"),
                                    ],
                                  );
                                },
                                title: const Text("About App"),
                              ),
                            )
                          ],
                        )
                      : const SizedBox(
                          height: 0,
                        ),
                ],
              ),
              leading: isShowAction
                  ? null
                  : IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.white,
                      )),
            ),
          ),
        ),
      ),
    ),
  );
}
