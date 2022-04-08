import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maps_first/constants/data.dart';
import 'package:maps_first/presentation/widgets/hotels_item.dart';

class HotelsScreen extends StatelessWidget {
  const HotelsScreen({
    Key? key,
  }) : super(key: key);

  Widget buildTheBody() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            buildTheFavouriteList(),
          ],
        ),
      ),
    );
  }

  Widget buildTheFavouriteList() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
      ),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: hotels.length,
      itemBuilder: ((context, index) {
        return HotelsItem(
          hotel: hotels[index],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.black),
        title: const Text(
          'Hotels',
        ),
        backgroundColor: Colors.black,
      ),
      body: buildTheBody(),
    );
  }
}
