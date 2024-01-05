import 'package:figmaui/Utils/FontFamily.dart';
import 'package:figmaui/Utils/Imagepath_assets.dart';
import 'package:flutter/material.dart';

import '../Utils/const.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImagePath.splashScreenImage),
                fit: BoxFit.fill)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                Const.Aspen,
                textAlign: TextAlign.center,
                style: FontFamily.bold(color: Colors.white,
                    fontsize: 80, font: Const.Hiatus, letterSpacing: 10),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Plan your",
                      style: FontFamily.regular(
                          font: Const.Montserrat,
                          fontsize: 25,
                          color: Colors.white),
                    ),
                    Text(
                      "Luxurious \nVacation",
                      style: FontFamily.bold(
                        color: Colors.white,
                        font: Const.Montserrat,
                        letterSpacing: 0.7,
                        fontsize: 57,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                        },
                        child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Center(
                              child: Text(
                                Const.Explore,
                                style: FontFamily.bold(
                                    color: Colors.white, font: Const.Montserrat),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
