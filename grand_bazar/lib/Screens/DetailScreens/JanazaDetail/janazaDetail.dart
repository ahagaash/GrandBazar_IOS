import 'package:flutter/material.dart';
import 'package:grand_bazar/Screens/DetailScreens/JanazaDetail/upperJanazaDetail.dart';

class JanazaDetailScreen extends StatefulWidget {
  const JanazaDetailScreen({Key? key}) : super(key: key);

  @override
  State<JanazaDetailScreen> createState() => _JanazaDetailScreenState();
}

class _JanazaDetailScreenState extends State<JanazaDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //Direction Button
    final directionButton = Material(
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
          'Get Direction',
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
              const JanazaDetailUpperComponent(imgUrl: "assets/janaza.jpg"),
              Padding(
                padding: const EdgeInsets.only(top: 260.0),
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
                    padding: const EdgeInsets.all(34.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                          'Ameer',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold),
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
                                        'Burial Date: 2021-08-09',
                                        style: TextStyle(
                                            fontSize: 14.0, color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 45.0),
                              Expanded(
                                child: Column(
                                  children: const [
                                    Text(
                                      'Burial Time: 16:00:00',
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'Location: Malwanahinna',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.grey,
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
                        const SizedBox(height: 100.0),
                        Align(
                            alignment: Alignment.centerRight,
                            child: directionButton),
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