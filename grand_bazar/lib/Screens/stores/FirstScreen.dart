import 'package:flutter/material.dart';

import '../../Util/ApiUtils/model/storeModel.dart';
import '../../Util/ApiUtils/services/storeService.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<StoreModel>? stores;

  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getStore();
    // fetchUsers();
  }

  getStore() async {
    stores = await StoreService().getStores();
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
       padding: const EdgeInsets.only(top:20),
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
                 
                  child: ListTile(
                    
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                          child: Row(
                            children:  <Widget>[
                              Text(
                                stores![index].name,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Expanded(
                                child: Text(
                                   stores![index].region.name,
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      subtitle: const Text(
                        'KFC  (abbreviation of Kentucky Fried Chicken) is a',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/stores/store3.jpg'),
                            fit: BoxFit.cover,
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
