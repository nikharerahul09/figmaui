import 'package:figmaui/Common_Widgets/Horizontal_Row_Text_widget.dart';
import 'package:figmaui/Common_Widgets/horizontal_list_view_widget.dart';
import 'package:figmaui/Common_Widgets/place_card_widget.dart';
import 'package:figmaui/Common_Widgets/recommanded_widget.dart';
import 'package:figmaui/Data/Model_Class/Place_Model_Class.dart';
import 'package:figmaui/Screens/place_detail_screen.dart';
import 'package:figmaui/Utils/FontFamily.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../Data/Dummy_Data.dart';
import '../Utils/Imagepath_assets.dart';
import '../Utils/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> selectedStates =
      List.generate(Data.Category.length, (index) => index == 0);

  List placeList = Data.place.map((e) => placeModel.fromJson(e)).toList();

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //<<<<<<<<<<<<<<<<<<<<<<<<<<Location Row >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>.//

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Const.Explore,
                        style: FontFamily.bold(
                            font: Const.Montserrat, color: Colors.black),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              ImagePath.location,
                              height: 22,
                              width: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                Const.location,
                                style: FontFamily.regular(
                                    font: Const.Montserrat, fontsize: 15),
                              ),
                            ),
                            SvgPicture.asset(
                              ImagePath.arrowDown,
                              height: 22,
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Text(
                    Const.Aspen,
                    style:
                        FontFamily.bold(fontsize: 25, font: Const.Montserrat),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),
                //<<<<<<<<<<<<<<<<<<<Search Bar>>>>>>>>>>>>>>>>>>>>>//

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 25),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(ImagePath.search),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(top: 10),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: Const.searchHint,
                                hintStyle: FontFamily.regular(
                                    font: Const.Montserrat, fontsize: 14)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //<<<<<<<<<<<<<<<<<<<<<<< Category List widget>>>>>>>>>>>>>>>>>>>>>>>>//

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: SizedBox(
                    height: 35,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: Data.Category.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                for (int i = 0;
                                    i < selectedStates.length;
                                    i++) {
                                  selectedStates[i] = i == index;
                                }
                              });
                            },
                            child: HorizontalListViewWidget(
                                Category: Data.Category[index],
                                selected: selectedStates[index]),
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //<<<<<<<<<<<<<<<<<<<<<<<<<<<<< popular and see all row widget>>>>>>>>>>>>>>>>>>>>>>>>>>>>//

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: Horizontal_Row_Text_widget(
                      text1: Const.Popular, text2: Const.Seeall),
                ),

                //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< Place card widget  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//

                SizedBox(
                  height: 280,
                  child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: Data.place.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PlaceDetailScreen(
                                          place: placeList[index])));
                            },
                            child: PlaceCardWidget(place: placeList[index]));
                      }),
                ),

                //<<<<<<<<<<<<<<<<<Recommended>>>>>>>>>>>>>>>>>>>>>>>>>>>//

                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: Horizontal_Row_Text_widget(
                    text1: Const.Recommended,
                  ),
                ),

                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: Data.place.length,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return RecommendedWidget(place: placeList[index]);
                      }),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
