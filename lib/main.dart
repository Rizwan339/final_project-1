import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mamas_recipe/firebase_options.dart';
import 'package:mamas_recipe/theme.dart';

import 'routes.dart';

void main() async {
  ui.platformViewRegistry.registerViewFactory(
      'example', (_) => DivElement()..innerText = 'Hello, HTML!');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        initialRoute: "/",
        onGenerateRoute: Routes.generateRoute,
        theme: themeData
        // home: SignUp(),
        );
  }
}
