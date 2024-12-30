import 'package:bloc_test/app.dart';
import 'package:bloc_test/service_locator/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await intDependencies();
  runApp(
    App(),
  );
}
