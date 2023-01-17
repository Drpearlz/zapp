import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomIndicatorBar extends StatefulWidget {
  final Color indicatorColor;
  final Color activeColor;
  final Color inactiveColor;
  final bool shadow;
  int currentIndex;
  late IconData iconData;
  final ValueChanged<int> onTap;
  final List<BottomIndicatorNavigationBarItem> items;

  BottomIndicatorBar({
    Key? key,
    required this.onTap,
    this.iconData = Icons.add,
    required this.items,
    this.activeColor = Colors.teal,
    this.inactiveColor = Colors.grey,
    this.indicatorColor = Colors.grey,
    this.shadow = true,
    this.currentIndex = 0,
  }) : super(key: key);

  @override
  State createState() => _BottomIndicatorBarState();
}

class _BottomIndicatorBarState extends State<BottomIndicatorBar> {
  static const double barHeight = 44;
  static const double indicatorHeight = 2;
  // This part of code get as e be i'll look forward to review in future
  List<BottomIndicatorNavigationBarItem> get items => widget.items;

  double width = 0;
  late Color activeColor;
  Duration duration = Duration(milliseconds: 40);

  double? _getIndicatorPosition(int index) {
    var isLtr = Directionality.of(context) == TextDirection.ltr;
    if (isLtr)
      return lerpDouble(-1.0, 1.0, index / (items.length - 1));
    else
      return lerpDouble(1.0, -1.0, index / (items.length - 1));
  }

  @override
  void initState() {
    super.initState();
    widget.iconData = widget.items[0].icon;
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    activeColor = widget.activeColor;

    return Container(
      height: barHeight + MediaQuery.of(context).viewPadding.bottom,
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: widget.shadow
            ? [
                BoxShadow(color: Colors.black12, blurRadius: 10),
              ]
            : null,
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: indicatorHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: items.map((item) {
                var index = items.indexOf(item);
                return GestureDetector(
                  onTap: () => _select(index, item),
                  child: _buildItemWidget(item, index == widget.currentIndex),
                );
              }).toList(),
            ),
          ),
          Positioned(
            top: 0,
            width: width,
            child: AnimatedAlign(
              alignment:
                  Alignment(_getIndicatorPosition(widget.currentIndex)!, 0),
              curve: Curves.linear,
              duration: duration,
              child: Container(
                color: widget.indicatorColor,
                width: width / items.length,
                height: indicatorHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _select(int index, BottomIndicatorNavigationBarItem item) {
    widget.currentIndex = index;
    widget.iconData = item.icon;
    widget.onTap(widget.currentIndex);

    setState(() {});
  }

  Widget _setIcon(BottomIndicatorNavigationBarItem item) {
    return Icon(
      item.icon,
      color: widget.iconData == item.icon ? activeColor : widget.inactiveColor,
      size: 30.0,
    );
  }

  Widget _buildItemWidget(
      BottomIndicatorNavigationBarItem item, bool isSelected) {
    return Container(
      color: item.backgroundColor,
      height: barHeight,
      width: width / items.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _setIcon(item),
        ],
      ),
    );
  }
}

class BottomIndicatorNavigationBarItem {
  final IconData icon;
  final Color backgroundColor;

  BottomIndicatorNavigationBarItem({
    required this.icon,
    this.backgroundColor = Colors.white,
  });
}
