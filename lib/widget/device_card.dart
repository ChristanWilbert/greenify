import 'package:flutter/material.dart';
import 'package:flutter_shakemywidget/flutter_shakemywidget.dart';
import 'package:greenify/models/device_class.dart';
import 'package:greenify/provider/device_provider.dart';
import 'package:greenify/widget/adddevice/addDevicePopup.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class DeviceCard extends StatefulWidget {
  const DeviceCard({required this.device, super.key});
  final Device device;

  @override
  State<DeviceCard> createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  double opacityLevel = 1.0;
  final shakeKey = GlobalKey<ShakeWidgetState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (BuildContext context) {
                return AddDevicePopup.edit(appliance: widget.device);
              },
            ),
        onLongPress: () {
          shakeKey.currentState?.shake();
          setState(() {
            opacityLevel = 0;
          });
          Future.delayed(const Duration(seconds: 1)).then((_) {
            context.read<DeviceProvider>().deselectDevice(widget.device);
            setState(() {
              opacityLevel = 1;
            });
          });
        },
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 1),
          child: ShakeMe(
            key: shakeKey,
            shakeCount: 2,
            shakeOffset: 10,
            shakeDuration: const Duration(milliseconds: 500),
            child: Container(
              margin: const EdgeInsets.all(4),
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
                          "${widget.device.qty}QTY",
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
                      widget.device.img,
                      width: 40,
                      height: 40,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 84, 41, 0),
                    child: Text(widget.device.name,
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0xffEEF1F4),
                            fontWeight: FontWeight.w300)),
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
                            Text(
                              widget.device.type,
                              style: const TextStyle(
                                color: Color(0xff9BA5B7),
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Helvetica",
                              ),
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
                            Text(
                              "${widget.device.watt} W",
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Helvetica",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
