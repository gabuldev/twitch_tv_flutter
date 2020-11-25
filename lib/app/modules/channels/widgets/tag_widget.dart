import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  final String label;
  const TagWidget({Key key, @required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(100)),
        child: Text(
          label,
          style: TextStyle(color: Colors.grey[200], fontSize: 12),
        ),
      ),
    );
  }
}
