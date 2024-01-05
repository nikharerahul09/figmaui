import 'package:figmaui/Common_Widgets/book_now_widget.dart';
import 'package:figmaui/Common_Widgets/facility_widget.dart';
import 'package:figmaui/Data/Model_Class/Place_Model_Class.dart';
import 'package:figmaui/Utils/FontFamily.dart';
import 'package:figmaui/Utils/Imagepath_assets.dart';
import 'package:figmaui/Utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

class PlaceDetailScreen extends StatefulWidget {
  const PlaceDetailScreen({super.key, required this.place});

  final placeModel place;

  @override
  State<PlaceDetailScreen> createState() => _PlaceDetailScreenState();
}

class _PlaceDetailScreenState extends State<PlaceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * .45,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage(widget.place.image.toString()),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Positioned(
                          top: 15,
                          left: 15,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: SvgPicture.asset(
                                ImagePath.backArrow,
                                fit: BoxFit.contain,
                              ),
                            ),
                          )),
                      Positioned(
                          right: 20,
                          bottom: 0,
                          child: Container(
                            // height: 40,
                            // width: 40,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade200,
                                      spreadRadius: 3,
                                      blurRadius: 6,
                                      offset: const Offset(1, 5))
                                ]),
                            child: const Center(
                              child: Icon(
                                Icons.favorite,
                                color: Colors.redAccent,
                                size: 30,
                              ),
                            ),
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.place.placeName.toString(),
                          style: FontFamily.bold(
                              font: Const.Montserrat, fontsize: 25),
                        ),
                        Text(
                          Const.Showmap,
                          style: FontFamily.bold(
                            font: Const.Montserrat,
                            color: Colors.blue,
                            fontsize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(ImagePath.star),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          widget.place.rating.toString(),
                          style: FontFamily.bold(
                              fontsize: 12,
                              font: Const.Montserrat,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        "(${widget.place.reviews.toString()} ${Const.Reviews})",
                        style: FontFamily.bold(
                            font: Const.Montserrat, fontsize: 12),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: ReadMoreText(
                      widget.place.about.toString(),
                      trimLines: 3,
                      colorClickableText: Colors.blue,
                      trimMode: TrimMode.Line,
                      style:
                          FontFamily.bold(fontsize: 13, font: Const.Montserrat),
                      moreStyle: FontFamily.bold(
                          fontsize: 13,
                          color: Colors.blue,
                          font: Const.Montserrat),
                      lessStyle: FontFamily.bold(
                          fontsize: 13,
                          color: Colors.blue,
                          font: Const.Montserrat),
                    ),
                  ),
                  Text(
                    Const.Facilities,
                    style: FontFamily.bold(
                        font: Const.Montserrat,
                        fontsize: 20,
                        letterSpacing: 0.8),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: SizedBox(
                      height: 90,
                      child: ListView.builder(
                          itemCount: widget.place.facilities!.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return FacilityWidget(
                                facilities: widget.place.facilities![index]);
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BookNowWidget(price: widget.place.price.toString()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
