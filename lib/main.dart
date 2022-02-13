import 'package:flutter/material.dart';
import 'package:flutter_graphQl/app.dart';

import 'feature_01/di_injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(MyApp());
}
