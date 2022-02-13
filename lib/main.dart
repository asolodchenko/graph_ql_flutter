import 'package:MyProgect_01/app.dart';
import 'package:flutter/material.dart';

import 'feature_01/services/di_injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(MyApp());
}
