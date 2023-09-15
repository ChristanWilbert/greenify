import 'package:flutter/material.dart';
import 'package:greenify/models/device_class.dart';

class DeviceTypeCard extends StatelessWidget {
  DeviceTypeCard(
      {required this.device,
      super.key,
      required this.selectType,
      required this.getType});
  final void Function(Device) selectType;
  final Device Function() getType;
  final Device device;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectType(device);
      },
      child: Container(
        margin: EdgeInsets.all(7),
        width: 70,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.2),
          color: const Color(0xff151515),
          border: Border.all(
            color: getType().id == device.id
                ? Colors.greenAccent
                : Color(0xff292F39),
          ),
        ),
        child: Column(
          children: [
            // icon
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                device.img,
                width: 30,
                height: 30,
              ),
            ),

            Text(device.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xffEEF1F4),
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontFamily: "assets/fonts/HelveticaReg.ttf",
                )),
          ],
        ),
      ),
    );
  }
}
