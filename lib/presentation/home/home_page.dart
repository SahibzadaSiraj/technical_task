import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_task/data/home_page_controller.dart';
import 'package:technical_task/models/poke_model.dart';
import 'package:technical_task/utils/app_contants.dart';
import 'package:technical_task/utils/app_routes.dart';
import 'package:technical_task/widgets/custom_app.dart';
import 'package:technical_task/widgets/custom_text_widget.dart';
import 'package:technical_task/widgets/sized_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final homeController =
        Provider.of<HomePageController>(context, listen: false);
    pokeList = homeController.pokeList;
    if (mounted) {
      setState(() {});
    }
  }

  List<PokeModel> pokeList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: appBar(title: "Home", context: context, back: false),
        ),
        body: ListView(
          children: [
            CustomSizeBox(
              width: 0,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: pokeList.length == 0
                  ? const Center(
                      child: CircularProgressIndicator(
                          backgroundColor: primaryColor),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: pokeList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: secondoryColor,
                              borderRadius: BorderRadius.circular(4)),
                          margin: const EdgeInsets.only(bottom: 6),
                          height: 83,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RouteNames.detailPage,
                                  arguments: pokeList[index].url);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: whitleColor,
                                  borderRadius: BorderRadius.circular(4)),
                              padding:
                                  const EdgeInsets.only(left: 20, right: 10),
                              margin: const EdgeInsets.only(bottom: 4, top: 4),
                              height: 80,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextWidgetClass.customText(
                                          text: "${pokeList[index].name}",
                                          textStyle:
                                              TextWidgetClass.customTextStyle(
                                                  textSize: 16,
                                                  textWeight: FontWeight.w700,
                                                  color: Colors.black)),
                                      const Icon(
                                        Icons.arrow_circle_right_outlined,
                                        color: primaryColor,
                                      )
                                    ],
                                  )),
                            ),
                          ),
                        );
                      }),
            ),
          ],
        ));
  }
}
