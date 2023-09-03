import 'package:flutter/material.dart';
import 'package:greenify/widget/add_card.dart';
import 'package:greenify/widget/devicelist/deviceListGenerator.dart';

class Device extends StatelessWidget {
  const Device({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0x0C0C0C),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 32.0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Appliances",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'assets/fonts/HelveticaReg.ttf')),
                const SizedBox(
                  height: 8,
                ),
                Wrap(children: [
                  DeviceList(),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
