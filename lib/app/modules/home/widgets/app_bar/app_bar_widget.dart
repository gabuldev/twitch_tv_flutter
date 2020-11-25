import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 14,
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 14,
                      child: Icon(Icons.person_outline),
                      backgroundColor: Colors.pink,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 3,
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(icon: Icon(Icons.rss_feed_rounded), onPressed: () {}),
              IconButton(icon: Icon(Icons.videocam_outlined), onPressed: () {}),
              IconButton(icon: Icon(Icons.email_outlined), onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.chat_bubble_outline), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40);
}
