import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:technical_task/models/individual_model.dart';
import 'package:technical_task/utils/app_contants.dart';
import 'package:technical_task/widgets/custom_app.dart';
import 'package:technical_task/widgets/custom_text_widget.dart';
import 'package:technical_task/widgets/sized_box.dart';

class DetailPage extends StatefulWidget {
  String? url;

  DetailPage({super.key, this.url});
  static const routeName = '/detailPage';

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Map<String, dynamic> map = {};
  String myUrl = '';
  IndividualPokeModel pokeList = IndividualPokeModel();
  getData() async {
    Future.delayed(Duration(seconds: 2), () async {
      Dio dio = Dio();

      var res = await dio.get(myUrl);
      map = res.data;
      print("abilities : ${map['abilities'].length}");

      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    myUrl = ModalRoute.of(context)!.settings.arguments as String;
    print("url : $myUrl");

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBar(title: "Detail page", context: context, back: true),
        ),
        body: ListView(
          children: [
            CustomSizeBox(
              width: 0,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: map.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(
                          backgroundColor: primaryColor),
                    )
                  : Container(
                      width: 100,
                      height: 50,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: map['abilities'].length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: secondoryColor,
                                  borderRadius: BorderRadius.circular(4)),
                              margin:
                                  const EdgeInsets.only(bottom: 6, right: 5),
                              height: 50,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: whitleColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  margin: const EdgeInsets.all(2),
                                  width: 120,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: TextWidgetClass.customText(
                                        text:
                                            "${map['abilities'][index]['ability']['name']}",
                                        textStyle:
                                            TextWidgetClass.customTextStyle(
                                                textSize: 13,
                                                textWeight: FontWeight.w700,
                                                color: Colors.black)),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: map.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(
                          backgroundColor: primaryColor),
                    )
                  : Container(
                      width: 100,
                      height: 50,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: map['game_indices'].length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: secondoryColor,
                                  borderRadius: BorderRadius.circular(4)),
                              margin:
                                  const EdgeInsets.only(bottom: 6, right: 5),
                              height: 50,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: whitleColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  margin: const EdgeInsets.all(2),
                                  width: 120,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: TextWidgetClass.customText(
                                        text:
                                            "${map['game_indices'][index]['version']['name']}",
                                        textStyle:
                                            TextWidgetClass.customTextStyle(
                                                textSize: 13,
                                                textWeight: FontWeight.w700,
                                                color: Colors.black)),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: map.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(
                          backgroundColor: primaryColor),
                    )
                  : Container(
                      width: 100,
                      height: 50,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: map['moves'].length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: secondoryColor,
                                  borderRadius: BorderRadius.circular(4)),
                              margin:
                                  const EdgeInsets.only(bottom: 6, right: 5),
                              height: 50,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: whitleColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  margin: const EdgeInsets.all(2),
                                  width: 120,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: TextWidgetClass.customText(
                                        text:
                                            "${map['moves'][index]['move']['name']}",
                                        textStyle:
                                            TextWidgetClass.customTextStyle(
                                                textSize: 13,
                                                textWeight: FontWeight.w700,
                                                color: Colors.black)),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: map.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(
                          backgroundColor: primaryColor),
                    )
                  : Container(
                      width: 100,
                      height: 50,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: map['stats'].length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: secondoryColor,
                                  borderRadius: BorderRadius.circular(4)),
                              margin:
                                  const EdgeInsets.only(bottom: 6, right: 5),
                              height: 50,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: whitleColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  margin: const EdgeInsets.all(2),
                                  width: 120,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: TextWidgetClass.customText(
                                        text:
                                            "${map['stats'][index]['stat']['name']}",
                                        textStyle:
                                            TextWidgetClass.customTextStyle(
                                                textSize: 13,
                                                textWeight: FontWeight.w700,
                                                color: Colors.black)),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: map.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(
                          backgroundColor: primaryColor),
                    )
                  : Container(
                      width: 100,
                      height: 50,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: map['types'].length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  color: secondoryColor,
                                  borderRadius: BorderRadius.circular(4)),
                              margin:
                                  const EdgeInsets.only(bottom: 6, right: 5),
                              height: 50,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: whitleColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  margin: const EdgeInsets.all(2),
                                  width: 120,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: TextWidgetClass.customText(
                                        text:
                                            "${map['types'][index]['type']['name']}",
                                        textStyle:
                                            TextWidgetClass.customTextStyle(
                                                textSize: 13,
                                                textWeight: FontWeight.w700,
                                                color: Colors.black)),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
            ),
            // Image.network("${map['sprites']['back_shiny']}")
          ],
        ));
  }
}
