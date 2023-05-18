import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //login function

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: ListView(
          children: [
            for (int x = 1; x <= 5; x++) ...[
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
                child: SizedBox(
                  height: 135,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 10,
                    shadowColor: const Color.fromARGB(255, 255, 255, 255),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 100,
                              height: 100,
                              // child: Image.asset('assets/stores/store3.jpg'),
                              // child: AspectRatio(
                              // aspectRatio: 16 / 9, //aspect ratio for Image
                              child: Image(
                                image: AssetImage('assets/stores/store3.jpg'),
                                fit: BoxFit
                                    .fill, //fill type of image inside aspectRatio
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0,
                                  left: 30.0,
                                  bottom: 10.0,
                                  right: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'iPhone 12',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 13.0,
                                  ),
                                  const Text(
                                    'Maxcell Mobiles',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(141, 0, 0, 0),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(
                                    height: 13.0,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'Rs 199.99',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(141, 0, 0, 0),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 100.0,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'Jun 22, 2021',
                                          style: TextStyle(
                                            fontSize: 11.0,
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(141, 0, 0, 0),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
          ],
        )));
  }
}
