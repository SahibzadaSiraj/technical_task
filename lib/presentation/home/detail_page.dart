import 'package:flutter/material.dart';
import 'package:technical_task/data/api_calling_controller.dart';
import 'package:technical_task/models/individual_model.dart';
import 'package:technical_task/utils/app_contants.dart';
import 'package:technical_task/widgets/custom_app.dart';
import 'package:technical_task/widgets/custom_text_widget.dart';
import 'package:technical_task/widgets/image_widget.dart';
import 'package:technical_task/widgets/list_view_builder.dart';
import 'package:technical_task/widgets/sized_box.dart';

// ignore: must_be_immutable
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
    super.initState();
    getIndividualPoke();
  }

  Map<String, dynamic> map = {};
  String myUrl = '';
  IndividualPokeModel pokeList = IndividualPokeModel();
  getIndividualPoke() async {
    Future.delayed(Duration(seconds: 2), () async {
      var res = await ApiCalls.getApi(myUrl);
      map = res.data;
      pokeList = IndividualPokeModel.fromJson(res.data);
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    myUrl = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBar(title: "Detail page", context: context, back: true),
        ),
        body: map.isEmpty
            ? const Center(
                child: CircularProgressIndicator(backgroundColor: primaryColor),
              )
            : ListView(
                children: [
                  CustomSizeBox(
                    width: 0,
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.all(6),
                      child: Row(
                        children: [
                          TextWidgetClass.customText(
                              text: "Name: ",
                              textStyle: TextWidgetClass.customTextStyle(
                                  textSize: 18,
                                  textWeight: FontWeight.w600,
                                  color: primaryColor)),
                          TextWidgetClass.customText(
                              text: "${pokeList.name}",
                              textStyle: TextWidgetClass.customTextStyle(
                                  textSize: 18,
                                  textWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(6),
                      child: Row(
                        children: [
                          TextWidgetClass.customText(
                              text: "Height: ",
                              textStyle: TextWidgetClass.customTextStyle(
                                  textSize: 18,
                                  textWeight: FontWeight.w600,
                                  color: primaryColor)),
                          TextWidgetClass.customText(
                              text: "${pokeList.height}",
                              textStyle: TextWidgetClass.customTextStyle(
                                  textSize: 18,
                                  textWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.all(6),
                      child: Row(
                        children: [
                          TextWidgetClass.customText(
                              text: "Weight: ",
                              textStyle: TextWidgetClass.customTextStyle(
                                  textSize: 18,
                                  textWeight: FontWeight.w600,
                                  color: primaryColor)),
                          TextWidgetClass.customText(
                              text: "${map['weight']}",
                              textStyle: TextWidgetClass.customTextStyle(
                                  textSize: 18,
                                  textWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: TextWidgetClass.customText(
                        text: "Sprites",
                        textStyle: TextWidgetClass.customTextStyle(
                            textSize: 18,
                            textWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  Wrap(
                    children: [
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.backDefault}"),
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.backShiny}"),
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.frontDefault}"),
                    ],
                  ),
                  CustomSizeBox(
                    width: 0,
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: TextWidgetClass.customText(
                        text: "Other Sprites",
                        textStyle: TextWidgetClass.customTextStyle(
                            textSize: 18,
                            textWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  Wrap(
                    children: [
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.other!.home!.frontDefault}"),
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.other!.home!.frontShiny}"),
                    ],
                  ),
                  CustomSizeBox(
                    width: 0,
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: TextWidgetClass.customText(
                        text: "Official Artwork Sprites",
                        textStyle: TextWidgetClass.customTextStyle(
                            textSize: 18,
                            textWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  Wrap(
                    children: [
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.other!.officialArtwork!.frontShiny}"),
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.other!.officialArtwork!.frontDefault}"),
                    ],
                  ),
                  CustomSizeBox(
                    width: 0,
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: TextWidgetClass.customText(
                        text: "Versions Sprites",
                        textStyle: TextWidgetClass.customTextStyle(
                            textSize: 18,
                            textWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  Wrap(
                    children: [
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.versions!.generationI!.redBlue!.backDefault}"),
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.versions!.generationI!.redBlue!.frontDefault}"),
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.versions!.generationIi!.gold!.backDefault}"),
                      CustomImage.imageNetwork(
                          "${pokeList.sprites!.versions!.generationI!.yellow!.frontTransparent}"),
                    ],
                  ),

                  CustomSizeBox(
                    width: 0,
                    height: 10,
                  ),

                  // map['species'].map((key, value) => Text(value)),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: TextWidgetClass.customText(
                        text: "Ablitities",
                        textStyle: TextWidgetClass.customTextStyle(
                            textSize: 18,
                            textWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  CustomListView(
                      map: map['abilities'],
                      length: map['abilities'].length,
                      number: 1),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: TextWidgetClass.customText(
                        text: "Game Indices",
                        textStyle: TextWidgetClass.customTextStyle(
                            textSize: 18,
                            textWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  CustomListView(
                      map: map['game_indices'],
                      length: map['game_indices'].length,
                      number: 2),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: TextWidgetClass.customText(
                        text: "Moves",
                        textStyle: TextWidgetClass.customTextStyle(
                            textSize: 18,
                            textWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  CustomListView(
                      map: map['moves'],
                      length: map['moves'].length,
                      number: 3),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: TextWidgetClass.customText(
                        text: "Stats",
                        textStyle: TextWidgetClass.customTextStyle(
                            textSize: 18,
                            textWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  CustomListView(
                      map: map['stats'],
                      length: map['stats'].length,
                      number: 4),
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: TextWidgetClass.customText(
                        text: "Types",
                        textStyle: TextWidgetClass.customTextStyle(
                            textSize: 18,
                            textWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  CustomListView(
                      map: map['types'],
                      length: map['types'].length,
                      number: 5),

                  // Image.network("${map['sprites']['back_shiny']}")
                ],
              ));
  }
}
