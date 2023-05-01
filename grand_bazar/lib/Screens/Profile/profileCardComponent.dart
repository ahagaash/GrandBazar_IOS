import 'package:flutter/material.dart';

class ProfileCardComponent extends StatelessWidget {
  const ProfileCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
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
      ),
    );
  }
}
