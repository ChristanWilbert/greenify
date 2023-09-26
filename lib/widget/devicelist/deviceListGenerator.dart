import 'package:flutter/material.dart';
import 'package:greenify/models/device_class.dart';
import 'package:greenify/provider/device_provider.dart';
import 'package:greenify/widget/adddevice/add_card.dart';
import 'package:greenify/widget/device_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class DeviceList extends StatelessWidget {
  const DeviceList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Device> devices =
        context.watch<DeviceProvider>().selectedDevices;
    List<Widget> selectedDevices = [];
    selectedDevices.addAll((devices.map((device) {
      return (DeviceCard(device: device));
    })).toList());
    selectedDevices.add(const AddCard());
    return Wrap(
      children: selectedDevices,
    );
  }
}
