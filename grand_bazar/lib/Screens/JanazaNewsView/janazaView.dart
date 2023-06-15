import 'package:flutter/material.dart';
import 'package:grand_bazar/Screens/DetailScreens/JanazaDetail/janazaDetail.dart';
import 'package:grand_bazar/Util/ApiUtils/controller/janazaController.dart';
import 'package:grand_bazar/Util/ApiUtils/model/janazaModel.dart';
import 'package:grand_bazar/Util/ApiUtils/sessionManager/userSession.dart';

import '../../Util/ApiUtils/services/janazaService.dart';

class JanazaViewScreen extends StatefulWidget {
  const JanazaViewScreen({Key? key, required this.userSession})
      : super(key: key);
  final UserSession userSession;
  @override
  State<JanazaViewScreen> createState() => _JanazaViewScreenState();
}

class _JanazaViewScreenState extends State<JanazaViewScreen> {
  // List<JanazaNews>? janazaNews;
  int? length;

 List<JanazaModel>? stores;


  var isLoaded = false;
  void initState() {
    super.initState();

    getJanazaNews();
  }

 
  getJanazaNews() async {
    stores = await JanazaService().getJanazas();


    if (stores != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Visibility(
          visible: isLoaded,
          child: ListView.builder(
            itemCount: stores?.length,
            itemBuilder: (context, index) {
              Divider(
                thickness: 5,
                color: Colors.grey[300],
              );

              return Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JanazaDetailScreen()),
                    );
                  },
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
                          // Image.asset('assets/janaza.jpg'),
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
                                            children: [
                                              Text(
                                                stores![index].personName,
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
                                          children:  [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                               stores![index].burialTime,
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
                                            children:  [
                                              Text(
                                                'Burial Date: '+stores![index].date.month.toString()+'/'+stores![index].date.day.toString()+'/'+stores![index].date.year.toString(),
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
                                          children:  [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                'Burial Time:'+  stores![index].burialTime,
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
                                      color:
                                          Color.fromARGB(255, 133, 131, 131)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}