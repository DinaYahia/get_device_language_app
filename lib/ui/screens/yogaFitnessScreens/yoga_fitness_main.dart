import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_localizations.dart';

// ignore: use_key_in_widget_constructors
class YogaMainScreen extends StatelessWidget {
  static const int mainColor = 0xff624FC0;
  static const int usedGrayColor = 0xffC4C4C4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.settings_outlined,
                color: Color(mainColor),
              ),
              Spacer(),
              Text(
                // 'yoga_home_title'.tr(),
                AppLocalizations.of(context).translate("yoga_home_title"),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: Color(mainColor),
                ),
              ),
              Spacer(),
              const Icon(
                Icons.search,
                color: Color(mainColor),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // top yoga for the day
              Container(
                width: double.infinity,
                height:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 120.h
                        : 200.h,
                padding: const EdgeInsets.only(right: 20, left: 10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      end: Alignment.centerLeft,
                      begin: Alignment.centerRight,
                      colors: <Color>[
                        // Colors.black.withAlpha(0),
                        // Colors.black54
                        Color(0xff253A55),
                        Color(0xff141F31),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Lottie.asset('assets/images/yoga.json',
                            width: 120.0, height: 120.0),
                      ),
                    ),
                    // Spacer(),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Container(
                          child: Text(
                            // 'yoga_top'.tr(),
                            AppLocalizations.of(context).translate("yoga_top"),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Discover Text
              Container(
                margin: EdgeInsets.symmetric(vertical: 22),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // 'yoga_discover'.tr(),
                      AppLocalizations.of(context).translate("yoga_discover"),
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    // beginners
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 140.h
                              : 200.h,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              //top image
                              Container(
                                // height: MediaQuery.of(context).orientation ==
                                //         Orientation.portrait
                                //     ? 140.h
                                //     : 200.h,
                                height: double.infinity,
                                width: double.infinity,
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1616699002805-0741e1e4a9c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // top shadow
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                padding: const EdgeInsets.only(bottom: 30),
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      end: Alignment.centerLeft,
                                      begin: Alignment.centerRight,
                                      colors: <Color>[
                                        // Colors.black.withAlpha(0),
                                        Colors.black87,
                                        Colors.black26,
                                        Colors.black87,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(8)),
                              ),

                              // bottom text
                              Container(
                                // width: double.infinity,
                                // height: double.infinity,
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 140.h
                                    : 200.h,
                                width: double.infinity,
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 50, right: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      // 'yoga_beginners'.tr(),
                                      AppLocalizations.of(context)
                                          .translate("yoga_beginners"),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                  ],
                                ),
                                alignment: Alignment.bottomLeft,
                                // context.locale
                                // window.locale.languageCode == Locale('en')
                                //     ? Alignment.bottomLeft
                                //     : Alignment.bottomRight
                              ),

                              Container(
                                // width: double.infinity,
                                // height: double.infinity,
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 140.h
                                    : 200.h,
                                width: double.infinity,
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.timer,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      // 'yoga_times'.tr(),
                                      AppLocalizations.of(context)
                                          .translate("yoga_times"),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                alignment: Alignment.bottomLeft,
                                //context.locale
                                // window.locale.languageCode == Locale('en')
                                //     ? Alignment.bottomLeft
                                //     : Alignment.bottomRight
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // intermediate
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 140.h
                              : 200.h,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              //top image
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 140.h
                                    : 200.h,
                                width: double.infinity,
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1549576490-b0b4831ef60a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // top shadow
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                padding: const EdgeInsets.only(bottom: 30),
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      end: Alignment.centerRight,
                                      begin: Alignment.centerLeft,
                                      colors: <Color>[
                                        // Colors.black.withAlpha(0),
                                        Colors.black87,
                                        Colors.black26,
                                        Colors.black87,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(8)),
                              ),

                              // bottom text
                              Container(
                                width: double.infinity,
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 140.h
                                    : 200.h,
                                padding: const EdgeInsets.only(
                                    right: 20, bottom: 50, left: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      // 'yoga_intermediate'.tr(),
                                      AppLocalizations.of(context)
                                          .translate("yoga_intermediate"),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                  ],
                                ),
                                alignment: Alignment.bottomRight,
                                // context.locale
                                // window.locale.languageCode == Locale('en')
                                //     ? Alignment.bottomRight
                                //     : Alignment.bottomLeft
                              ),

                              Container(
                                width: double.infinity,
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 140.h
                                    : 200.h,
                                // color: Colors.red,
                                padding: const EdgeInsets.only(
                                    right: 20, bottom: 20, left: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(
                                      Icons.timer,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      // 'yoga_times'.tr(),
                                      AppLocalizations.of(context)
                                          .translate("yoga_times"),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                alignment: Alignment.bottomRight,
                                // context.locale
                                // window.locale.languageCode == Locale('en')
                                //     ? Alignment.bottomRight
                                //     : Alignment.bottomLeft
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // advanced
                    Card(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          height: MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 140.h
                              : 200.h,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              //top image
                              Container(
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 140.h
                                    : 200.h,
                                width: double.infinity,
                                color: Colors.amber,
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1593811167565-4672e6c8ce4c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              // top shadow
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                padding: const EdgeInsets.only(bottom: 30),
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      end: Alignment.centerLeft,
                                      begin: Alignment.centerRight,
                                      colors: <Color>[
                                        // Colors.black.withAlpha(0),
                                        Colors.black87,
                                        Colors.black26,
                                        Colors.black87,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(8)),
                              ),

                              // bottom text
                              Container(
                                width: double.infinity,
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 140.h
                                    : 200.h,
                                // color: Colors.red,
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 50, right: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      // 'yoga_advanced'.tr(),
                                      AppLocalizations.of(context)
                                          .translate("yoga_advanced"),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                  ],
                                ),
                                alignment: Alignment.bottomLeft,
                                // context.locale
                                // window.locale.languageCode == Locale('en')
                                //     ? Alignment.bottomLeft
                                //     : Alignment.bottomRight,
                              ),

                              Container(
                                width: double.infinity,
                                height: MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 140.h
                                    : 200.h,
                                // color: Colors.red,
                                padding: const EdgeInsets.only(
                                    left: 20, bottom: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.timer,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      // 'yoga_times'.tr(),
                                      AppLocalizations.of(context)
                                          .translate("yoga_times"),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                ),
                                alignment: Alignment.bottomLeft,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            // label: 'Home',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_up),
            // label: 'Training',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            // label: 'Poses',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            // label: 'Meditation',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            // label: 'Water',
            label: '',
          ),
        ],
        selectedItemColor: Color(mainColor),
        unselectedItemColor: Color(usedGrayColor),
      ),
    );
  }
}
