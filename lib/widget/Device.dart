import 'package:flutter/material.dart';
import 'package:greenify/widget/device_card.dart';

class Device extends StatelessWidget {
  const Device({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0x0C0C0C),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 72.0, 0, 0),
          child: Column(
            children: const [
              Text("Add Device",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica')),
              SizedBox(
                height: 32,
              ),
              DeviceCard(),
            ],
          ),
        ),
      ),
    );
  }
}
