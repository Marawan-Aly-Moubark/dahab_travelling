import 'package:flutter/material.dart';

import '../../constants/strings.dart';

class HotelsItem extends StatelessWidget {
  const HotelsItem({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  final hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: Container(
            color: Colors.white,
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/loading.gif',
              image: hotel['image'],
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              hotel['name'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            leading: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                '\$${hotel['price']}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
