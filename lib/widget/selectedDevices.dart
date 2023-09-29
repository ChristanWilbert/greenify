import 'package:flutter/material.dart';
import 'package:greenify/widget/devicelist/deviceListGenerator.dart';

class SelectedDevices extends StatelessWidget {
  const SelectedDevices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5),
          child: Text(
            "Appliances",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Helvetica', // Replace with your font family name
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const DeviceList(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Long press to remove device",
                style: TextStyle(color: Color.fromARGB(121, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
