import 'package:flutter/material.dart';
import 'package:greenify/models/device_class.dart';
import 'package:greenify/provider/device_provider.dart';
import 'package:greenify/widget/deviceTypeCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class DeviceTypeCardList extends StatelessWidget {
  const DeviceTypeCardList(
      {super.key, required this.selectType, required this.getType});
  final void Function(Device) selectType;
  final Device Function() getType;

  @override
  Widget build(BuildContext context) {
    final List<Device> devices = context.watch<DeviceProvider>().devices;
    List<Widget> Devices = [];
    Devices.addAll((devices.map((device) {
      return (DeviceTypeCard(
          device: device, selectType: selectType, getType: getType));
    })).toList());
    return Wrap(
      alignment: WrapAlignment.start,
      children: Devices,
    );
  }
}
