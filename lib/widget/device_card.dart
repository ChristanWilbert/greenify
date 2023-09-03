import 'package:flutter/material.dart';
import 'package:greenify/models/device_class.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard({required this.device, super.key});
  final Device device;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
        color: const Color(0xff151515),
        border: Border.all(
          color: const Color(0xff292F39),
        ),
      ),
      child: Stack(
        children: [
          //qty
          Padding(
            padding: const EdgeInsets.fromLTRB(85, 12, 12, 165),
            child: Container(
              width: 53,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color: const Color(0xff3FD604),
                border: Border.all(
                  color: const Color(0xff292F39),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  device.qty.toString() + "QTY",
                  style: const TextStyle(
                      color: Color(0xff043600),
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: "assets/fonts/HelveticaReg.ttf"),
                ),
              ),
            ),
          ),
          // icon
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 39, 86, 124),
            child: Image.asset(
              device.img,
              width: 40,
              height: 37,
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(24, 84, 41, 101),
            child: Text(device.name,
                style: const TextStyle(
                  color: Color(0xffEEF1F4),
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontFamily: "assets/fonts/HelveticaReg.ttf",
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(41, 113, 39, 67),
            child: Container(
              width: 70,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: const Color(0xff151515),
                border: Border.all(
                  color: const Color(0xff292F39),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "1.5 TON",
                      style: TextStyle(
                        color: Color(0xff9BA5B7),
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        fontFamily: "assets/fonts/HelveticaReg.ttf",
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      "assets/images/arrowsmall.png",
                      width: 6,
                      height: 11,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 148, 7, 8),
            child: Container(
              width: 135,
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0xffEEF1F4),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: const Color(0xff292F39),
                ),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "1500W",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        fontFamily: "assets/fonts/HelveticaBlk.ttf",
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      "assets/images/selectorbig.png",
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
