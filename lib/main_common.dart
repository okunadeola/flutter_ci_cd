
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ci_cd/app_widget.dart';
import 'package:flutter_ci_cd/config_reader.dart';
import 'package:flutter_ci_cd/environment.dart';

Future<void> mainCommon(String env) async{
  WidgetsFlutterBinding.ensureInitialized();

  await ConfigReader.initialize();

  late MaterialColor  primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  
  }

  runApp(Provider.value(value: primaryColor, child: const MyApp()));


}