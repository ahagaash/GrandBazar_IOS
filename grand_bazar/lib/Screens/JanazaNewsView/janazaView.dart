import 'package:flutter/material.dart';

class JanazaViewScreen extends StatefulWidget {
  const JanazaViewScreen({Key? key}) : super(key: key);

  @override
  State<JanazaViewScreen> createState() => _JanazaViewScreenState();
}

class _JanazaViewScreenState extends State<JanazaViewScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: size.width,
        height: size.height,
        child: ListView(
          children: [
            for (int x = 1; x <= 5; x++) ...[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  elevation: 6,
                  shadowColor: const Color.fromARGB(255, 255, 255, 255),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: SizedBox(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/janaza.jpg'),
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IntrinsicHeight(
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Expanded(
                                        child: Column(
                                          children: const [
                                            Text(
                                              'JANAZA NEWS',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      174, 99, 99, 99)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: const [
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              'DEC 21, 2021',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12.0),
                              const Text(
                                'Ameer',
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              IntrinsicHeight(
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Expanded(
                                        child: Column(
                                          children: const [
                                            Text(
                                              'Burial Date: 2021-08-09 ',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      174, 99, 99, 99)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: const [
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              'Burial Time: 16:00:00',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color.fromARGB(
                                                      174, 99, 99, 99)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12.0),
                              const Text(
                                'Address: Malwanahinna',
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromARGB(255, 133, 131, 131)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ]
          ],
        ),
      )),
    );
  }
}
