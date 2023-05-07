import 'dart:math';

import 'package:flutter/material.dart';
import 'package:grand_bazar/Screens/DetailScreens/OfferDetail/upperOfferDetail.dart';

class OfferDetailScreen extends StatefulWidget {
  const OfferDetailScreen({Key? key}) : super(key: key);

  @override
  State<OfferDetailScreen> createState() => _OfferDetailScreenState();
}

class _OfferDetailScreenState extends State<OfferDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //Direction Button
    final ContactSellerButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 255, 188, 4),
      child: MaterialButton(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        minWidth: 180,
        onPressed: () {},
        child: const Text(
          'Contact Seller',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(children: [
              const OfferDetailUpperComponent(
                  imgUrl: "assets/dominosOffer.jpg"),
              Padding(
                padding: const EdgeInsets.only(top: 240.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            height: 100,
                            child: Image.asset(
                              "assets/dominos.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 0.5),
                        const Center(
                          child: Text(
                            "Domino's",
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 18.0,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Aug 09, 2021',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500,
                                fontSize: 15.0,
                                letterSpacing: 1.0),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          'Buy 1 Get 1 FREE',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17.0,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 12),
                        IntrinsicHeight(
                          child: Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Expanded(
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Start Date: 2021-08-20',
                                        style: TextStyle(
                                            fontSize: 14.0, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 77.0),
                              Expanded(
                                child: Column(
                                  children: const [
                                    Text(
                                      'End Date: 2021-08-22',
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        const Text(
                          'Description',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        const Text(
                          'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                        const SizedBox(height: 40.0),
                        Align(
                            alignment: Alignment.centerRight,
                            child: ContactSellerButton),
                        const SizedBox(
                          height: 10.0,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
