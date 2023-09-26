import 'package:flutter/material.dart';
import 'package:greenify/models/device_class.dart';
import 'package:greenify/provider/device_provider.dart';
import 'package:greenify/widget/devicelist/optionListGenerator.dart';
import 'package:provider/provider.dart';

class AddDevicePopup extends StatefulWidget {
  final Device? appliance;

  AddDevicePopup({Key? key, this.appliance}) : super(key: key);

  AddDevicePopup.edit({Key? key, required this.appliance}) : super(key: key);

  @override
  State<AddDevicePopup> createState() => _AddDevicePopupState();
}

class _AddDevicePopupState extends State<AddDevicePopup> {
  String type = "New", watt = "1000", qty = "10";
  late Device _selectedType;

  @override
  void initState() {
    super.initState();
    // Initialize _selectedType based on widget.appliance or context if needed

    setState(() {
      _selectedType =
          widget.appliance ?? context.read<DeviceProvider>().devices[0];
      if (widget.appliance != null) {
        qty = widget.appliance!.qty.toString();
        type = widget.appliance!.type;
        watt = widget.appliance!.watt;
      }
    });
  }

  void selectType(Device dev) {
    setState(() {
      _selectedType = dev;
    });
  }

  Device getType() {
    return _selectedType;
  }

  void addDevice() {
    Device temp = Device.withQty(
        name: _selectedType.name,
        img: _selectedType.img,
        watt: watt,
        qty: int.parse(qty),
        types: _selectedType.types);
    temp.type = type;
    if (widget.appliance != null)
      context.read<DeviceProvider>().deselectDevice(widget.appliance!);
    context.read<DeviceProvider>().selectDevice(temp);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    if (!_selectedType.types.contains(type)) type = _selectedType.types[0];
    List<String> typeChoice = _selectedType.types;
    List<String> qtyChoice =
        List.generate(12, (index) => (index + 1).toString());
    List<String> powerChoice =
        List.generate(90, (index) => ((index + 1) * 10).toString());
    powerChoice
        .addAll(List.generate(19, (index) => (1000 + 500 * index).toString()));

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff151515),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.75,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0, top: 16),
                  child: Image.asset(
                    'assets/images/x-close.png',
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 18.0, bottom: 10),
                child: Text("Choose the device",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    )),
              ),
            ),
            DeviceTypeCardList(
              selectType: selectType,
              getType: getType,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Theme(
                data: ThemeData.dark(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 86,
                      padding: EdgeInsets.all(10),
                      child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                              labelText: "Qty",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          dropdownColor: Color.fromARGB(240, 43, 44, 43),
                          value: qty,
                          items: qtyChoice
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ),
                              )
                              .toList(),
                          onChanged: (String? value) {
                            setState(() {
                              qty = value!;
                            });
                          }),
                    ),
                    Container(
                      width: 120,
                      padding: EdgeInsets.all(10),
                      child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                              labelText: "Power Rating",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          dropdownColor: Color.fromARGB(240, 43, 44, 43),
                          value: watt,
                          items: powerChoice
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ),
                              )
                              .toList(),
                          onChanged: (String? value) {
                            setState(() {
                              watt = value!;
                            });
                          }),
                    ),
                    Container(
                      width: 130,
                      padding: EdgeInsets.all(10),
                      child: DropdownButtonFormField(
                          decoration: const InputDecoration(
                              labelText: "Type",
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                          dropdownColor: Color.fromARGB(240, 43, 44, 43),
                          value: type,
                          items: typeChoice
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ),
                              )
                              .toList(),
                          onChanged: (String? value) {
                            setState(() {
                              type = value!;
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
            Theme(
              data: ThemeData.dark(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FilledButton(
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 45, 45, 46),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "CANCEL",
                          style: TextStyle(
                              color: Color.fromARGB(255, 101, 101, 101),
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FilledButton(
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                          backgroundColor: MaterialStatePropertyAll(
                            Color(0xff3fd604),
                          ),
                        ),
                        onPressed: () {
                          addDevice();
                        },
                        child: Text(
                          "ADD",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
