import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String photoURL;
  final bool isOnline;
  const CategoryItemWidget({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.photoURL,
    this.isOnline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: Image.network(
                  photoURL,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: isOnline ? Colors.green : Colors.red,
                  radius: 4,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
