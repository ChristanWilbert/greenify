import 'package:flutter/material.dart';
import 'package:greenify/models/device_class.dart';
import 'package:greenify/widget/add_card.dart';
import 'package:greenify/widget/device_card.dart';
import 'package:flutter/cupertino.dart';

class DeviceList extends StatelessWidget {
  DeviceList({super.key});
  final List<Device> devices = [
    Device(
        name: "Air Conditioner", img: "assets/images/Vector.png", watt: "2000"),
    Device.withQty(
        name: "Bulb", img: "assets/images/Vector.png", watt: "2600", qty: 5),
    Device(
        name: "Air Conditioner 3",
        img: "assets/images/Vector.png",
        watt: "2500"),
    Device.withQty(
        name: "Air fry ",
        img: "assets/images/Vector.png",
        watt: "1000",
        qty: 2),
    Device.withQty(
        name: "Loli", img: "assets/images/Vector.png", watt: "2900", qty: 100),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> selectedDevices = [];
    selectedDevices
        .addAll((devices.where((element) => element.selected).map((device) {
      return (DeviceCard(device: device));
    })).toList());
    selectedDevices.add(const AddCard());
    return Wrap(
      children: selectedDevices,
    );
  }
}
