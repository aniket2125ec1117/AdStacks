import 'package:flutter/material.dart';

class ColoredExpansionTile extends StatefulWidget {
  final String title;
  final List<Widget> children;
  final TextStyle textStyle;
  final Icon icons;

  const ColoredExpansionTile({
    super.key,
    required this.title,
    required this.children,
    required this.textStyle,
    required this.icons,
  });

  @override
  _ColoredExpansionTileState createState() => _ColoredExpansionTileState();
}

class _ColoredExpansionTileState extends State<ColoredExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: _isExpanded ? Color.fromARGB(255, 197, 147, 206) : Colors.white,
      child: ExpansionTile(
        title: Center(
          child: Text(
            widget.title,
            style: widget.textStyle,
          ),
        ),
        trailing: widget.icons,
        onExpansionChanged: (expanded) {
          setState(() {
            _isExpanded = expanded;
          });
        },
        tilePadding: EdgeInsets.zero,
        childrenPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        children: widget.children,
      ),
    );
  }
}
