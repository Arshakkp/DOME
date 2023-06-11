import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todolist/controller/project_controller.dart';
import 'package:todolist/view/home_screen.dart';
import 'package:todolist/view/utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Themes.themeData,
        home: ChangeNotifierProvider(
          create: (context) => ProjectController(),
          child: const HomeScreen(),
        ));
  }
}
