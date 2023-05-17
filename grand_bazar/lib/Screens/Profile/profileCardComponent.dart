import 'package:flutter/material.dart';
import 'package:grand_bazar/Screens/Home/home.dart';

class ProfileCardComponent extends StatelessWidget {
  const ProfileCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 2.8,
        decoration: const BoxDecoration(
          color: Color.fromARGB(221, 255, 86, 34),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/grandbazaarLogo.png'),
                  radius: 60.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Center(
                  child: Text(
                'Fazlan Mohammed Faleel',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 7.0,
              ),
              const Center(
                  child: Text(
                'Madawala | Wanguwa kade',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500),
              )),
              const SizedBox(
                height: 25.0,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Text(
                            '15',
                            style: TextStyle(
                                fontSize: 19.0, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(color: Colors.white, thickness: 1.5),
                    Expanded(
                      child: Column(
                        children: [
                          InkWell(
                              child: Icon(Icons.settings),
                              onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  )),
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
