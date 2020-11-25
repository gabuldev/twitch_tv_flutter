import 'package:flutter/material.dart';

enum RaisedButtonType { purple, grey }

class RaisedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final RaisedButtonType type;
  final String text;
  const RaisedButtonWidget({
    Key key,
    @required this.onPressed,
    @required this.text,
    this.type = RaisedButtonType.purple,
  }) : super(key: key);

  Color get _color {
    switch (type) {
      case RaisedButtonType.grey:
        {
          return Colors.grey;
        }
        break;
      case RaisedButtonType.purple:
        {
          return Colors.purple;
        }
        break;
      default:
        throw "INVALID RaisedButtonType";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RaisedButton(
            color: _color,
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
