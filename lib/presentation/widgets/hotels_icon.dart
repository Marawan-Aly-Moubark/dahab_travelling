import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maps_first/constants/strings.dart';

import '../../theme/color.dart';

class HotelsIcon extends StatelessWidget {
  HotelsIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, hotelsScreen);
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: appBarColor,
          border: Border.all(color: Colors.grey.withOpacity(.3)),
        ),
        child: const Icon(
          FontAwesomeIcons.hotel,
          color: Colors.indigo,
          size: 20,
        ),
      ),
    );
  }
}
