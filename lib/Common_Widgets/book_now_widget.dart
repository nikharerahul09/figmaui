import 'package:flutter/material.dart';

import '../Utils/FontFamily.dart';
import '../Utils/const.dart';

class BookNowWidget extends StatelessWidget {
  final String price;
  const BookNowWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Const.price,
              style: FontFamily.bold(
                  font: Const.Montserrat, fontsize: 12),
            ),
            Text(
              "\$$price",
              style: FontFamily.bold(
                  color: const Color(0xff2DD7A4), fontsize: 22),
            ),
          ],
        ),
        Expanded(
          child: Container(margin: const EdgeInsets.only(left: 40),
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Const.BookNow,style: FontFamily.bold(fontsize: 16,font: Const.Montserrat,color: Colors.white),),
                const SizedBox(width: 10,),
                const Icon(Icons.arrow_forward,color: Colors.white,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
