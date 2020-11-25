import 'package:flutter/material.dart';

class BottomNavigatorBarWidget extends StatefulWidget {
  final ValueChanged<int> onChange;
  BottomNavigatorBarWidget({Key key, @required this.onChange})
      : super(key: key);

  @override
  _BottomNavigatorBarWidgetState createState() =>
      _BottomNavigatorBarWidgetState();
}

class _BottomNavigatorBarWidgetState extends State<BottomNavigatorBarWidget> {
  var _index = 0;

  void _changeIndex(int value) {
    _index = value;
    setState(() {});
    widget.onChange(_index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: BottomNavigationBar(
          currentIndex: _index,
          onTap: _changeIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Seguindo",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Descubra",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.open_in_browser_outlined),
              label: "Procurar",
            ),
          ]),
    );
  }
}
