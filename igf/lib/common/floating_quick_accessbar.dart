import 'package:flutter/material.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  const FloatingQuickAccessBar({super.key});

  @override
  State<FloatingQuickAccessBar> createState() => _FloatingQuickAccessBarState();
}

class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
  List _isHovering = [false, false, false, false];
  List<Widget> rowElement = [];
  List<String> item = [
    'Marble Supply',
    'Equipment Supply',
    'MEP',
    'Maintenance'
  ];
  List<IconData> icons = [
    Icons.hardware,
    Icons.equalizer,
    Icons.engineering,
    Icons.room_service_sharp,
  ];
  List<Widget> generateRowElement() {
    rowElement.clear();
    for (int i = 0; i < item.length; i++) {
      Widget elementTitle = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.grey,
        onHover: ((value) {
          setState(() {
            value ? _isHovering[i] = true : _isHovering[i] = false;
          });
        }),
        onTap: (() {}),
        child: Text(
          item[i],
          style: TextStyle(
            color: _isHovering[i] ? Colors.grey : Colors.black26,
          ),
        ),
      );
      Widget spacer = SizedBox(
        height: 20,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[10],
          thickness: 1,
        ),
      );
      rowElement.add(elementTitle);
      if (i < item.length - 1) {
        rowElement.add(spacer);
      }
    }
    return rowElement;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
