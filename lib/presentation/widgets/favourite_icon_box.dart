import 'package:flutter/material.dart';

class FavouriteIconBox extends StatelessWidget {
  const FavouriteIconBox({
    Key? key,
    this.padding,
    this.unFavouriteCaseColorOfTheIcon,
    this.favouriteCaseColorOfTheIcon,
    this.unFavouriteCaseColorOfTheContainer,
    this.favouriteCaseColorOfTheContainer,
    this.iconSize = 22,
  }) : super(key: key);

  final EdgeInsets? padding;
  final Color? unFavouriteCaseColorOfTheIcon;
  final Color? favouriteCaseColorOfTheIcon;
  final Color? unFavouriteCaseColorOfTheContainer;
  final Color? favouriteCaseColorOfTheContainer;

  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
          padding: padding,
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.favorite,
            color: favouriteCaseColorOfTheIcon,
            size: iconSize,
          )),
    );
  }
}
