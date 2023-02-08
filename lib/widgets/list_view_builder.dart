import 'package:flutter/material.dart';
import 'package:technical_task/utils/app_contants.dart';
import 'package:technical_task/widgets/custom_text_widget.dart';

// ignore: must_be_immutable
class CustomListView extends StatelessWidget {
  List<dynamic> map;
  int length;
  int number;
  CustomListView(
      {super.key,
      required this.map,
      required this.length,
      required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        width: 100,
        height: 50,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: secondoryColor,
                    borderRadius: BorderRadius.circular(4)),
                margin: const EdgeInsets.only(bottom: 6, right: 5),
                height: 50,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: whitleColor,
                        borderRadius: BorderRadius.circular(4)),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    margin: const EdgeInsets.all(2),
                    width: 120,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidgetClass.customText(
                          text: number == 1
                              ? "${map[index]['ability']['name']}"
                              : number == 2
                                  ? "${map[index]['version']['name']}"
                                  : number == 3
                                      ? "${map[index]['move']['name']}"
                                      : number == 4
                                          ? "${map[index]['stat']['name']}"
                                          : number == 5
                                              ? "${map[index]['type']['name']}"
                                              : "",
                          textStyle: TextWidgetClass.customTextStyle(
                              textSize: 13,
                              textWeight: FontWeight.w700,
                              color: Colors.black)),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
