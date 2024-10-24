import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/home.dart';
import 'package:thread_app_sample/home_feed_list_controller.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey:
          Platform.isAndroid ? 'AIzaSyCQ6BiVefND94URKEPuH_-4GsNUQbkzSIc' : "",
      appId: Platform.isAndroid
          ? '1:982436077119:android:9c6606f60d037a8319e28a'
          : "",
      messagingSenderId: '982436077119',
      projectId: 'thread-sample-app-1fef9',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore.instance.collection('feeds').get().then((value) {
      print(value.docs.length);
    });
    timeago.setLocaleMessages('ko', timeago.KoMessages());
    Get.put(HomeFeedListcontroller());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
