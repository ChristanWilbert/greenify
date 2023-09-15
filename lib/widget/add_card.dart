import 'package:flutter/material.dart';
import 'package:greenify/widget/addDevicePopup.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 12, 7, 52),
              child:
                  Image.asset("assets/images/add.png", width: 136, height: 136),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 148, 7, 8),
              child: Container(
                width: 135,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: const Color(0xff292F39),
                  ),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("ADD",
                      style: TextStyle(
                        color: Color(0xff545F71),
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        fontFamily: "assets/fonts/HelveticaBlk.ttf",
                      )),
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return const AddDevicePopup();
        },
      ),
    );
  }
}
