import 'package:aslami_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyThemeData{
  static const Color PrimaryColor=Color.fromARGB(255, 183, 147, 95);
  static const Color PrimaryColorDark=Color.fromARGB(255, 15, 20, 36);
  static final  ThemeData LightTheme= ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor:MyThemeData.PrimaryColor ,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold
        )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
     selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
  );
  static final  ThemeData DarkTheme= ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor:MyThemeData.PrimaryColor ,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold
        )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('Islami'),
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      routes: {
        HomePage.routeName:(buildContext)=>HomePage()},
      initialRoute: HomePage.routeName,
    );
  }
}
