import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maps_first/presentation/widgets/bottombar_item.dart';
import '../../theme/color.dart';
import '../widgets/custom_image.dart';
import '../widgets/details_item.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({
    Key? key,
    this.data,
  }) : super(key: key);
  final data;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  get containerDecoration => null;

  Widget buildDetailsOfProduct() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTitleOfProduct(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTitleOfProduct() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.data["name"],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              SvgPicture.asset(
                "assets/icons/marker.svg",
                width: 15,
                height: 15,
                color: Colors.black,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                widget.data["location"],
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDescriptionOfTrip() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Text(
                widget.data['description'],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildListOfTripFeatures() {
    List<Widget> lists = [
      DetailsItem(
        data: widget.data,
        name: widget.data['rate'],
        icon: Icons.star,
        color: Colors.yellow,
      ),
      const SizedBox(
        width: 15,
      ),
      DetailsItem(
        data: widget.data,
        name: '1 night',
        icon: FontAwesomeIcons.moon,
        color: Colors.indigoAccent,
      ),
      const SizedBox(
        width: 15,
      ),
      DetailsItem(
        data: widget.data,
        name: 'Round Trip',
        icon: FontAwesomeIcons.planeDeparture,
        color: Colors.greenAccent,
      ),
    ];
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: lists,
        ),
      ),
    );
  }

  buildBottomOfTheDetailsScreen() {
    return Expanded(
      child: Row(
        children: [
          buildPricePerPerson(),
          buildBookNowContainer(),
        ],
      ),
    );
  }

  buildPricePerPerson() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Price',
            style: TextStyle(color: Colors.black38),
          ),
          const SizedBox(
            height: 8,
          ),
          RichText(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$${widget.data['price']}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const TextSpan(
                  text: '/person',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          // Text('\$' + data['price'] + ' / person'),
        ],
      ),
    );
  }

  Widget buildBookNowContainer() {
    return Expanded(
      child: InkWell(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          decoration: BoxDecoration(
            color: labelColor,
            border: Border.all(
              color: const Color(0xFFcdacf9),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          height: 50,
          child: Center(
            child: Text(
              labelText,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            if (labelColor == const Color(0xFF8A8989)) {
              labelColor = Colors.greenAccent;
              labelText = 'Reserved';
            } else {
              setState(() {
                labelColor = const Color(0xFF8A8989);
                labelText = ' Book Now';
              });
            }
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: containerDecoration,
            child: CustomImage(
              widget.data['image'],
              radius: 20,
              width: double.infinity,
              height: 300,
            ),
          ),
          buildDetailsOfProduct(),
          buildListOfTripFeatures(),
          buildDescriptionOfTrip(),
          buildBottomOfTheDetailsScreen(),
        ],
      ),
    );
  }
}
