import 'package:flutter/material.dart';
import 'package:maps_first/constants/data.dart';

import '../../theme/color.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem(
      {Key? key,
      required this.data,
      this.color = primary,
      required this.icon,
      required this.name})
      : super(key: key);
  final data;
  final Color color;
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 10),
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: shadowColor.withOpacity(0.1),
              spreadRadius: .5,
              blurRadius: .5,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: color.withOpacity(.2)),
                child: Icon(icon, size: 25, color: color)),
            const SizedBox(
              height: 2,
            ),
            Expanded(
              child: Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13, color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
