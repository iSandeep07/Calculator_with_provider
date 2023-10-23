import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calcu/provider/cal_provider.dart';

import 'Screen/Home_page.dart';

void main() {
  runApp(const StartApp());
}

class StartApp extends StatelessWidget {
  const StartApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>CalculatorProvider())
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        //themeMode: ThemeMode.light,
        theme: ThemeData(
appBarTheme: AppBarTheme(
  color: Colors.black
),
          primaryColor: Colors.blue,
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    );
  }
}

