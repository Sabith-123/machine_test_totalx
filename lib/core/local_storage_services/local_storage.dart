import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:machine_test_totalx/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends ChangeNotifier{
  
    List<UserModel> studentDetailsData = [];

    Future<void> getData() async {
    final sharedpref = await SharedPreferences.getInstance();
    final data = sharedpref.getString('userdetails');
    if (data != null) {
      final List decodedata = jsonDecode(data);
      studentDetailsData = decodedata
          .map((e) => UserModel.fromJson(e))
          .toList();
    }
    notifyListeners();
  
  }


    Future<void> putData() async {
    final sharedperf = await SharedPreferences.getInstance();
    final dataofstudentlist = studentDetailsData
        .map((e) => e.toJson())
        .toList();
    await sharedperf.setString('userdetails', jsonEncode(dataofstudentlist));
  }




}