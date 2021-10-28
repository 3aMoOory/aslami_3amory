import 'package:aslami_app/home/Hadeth/hadeth_tab.dart';
import 'package:aslami_app/home/Quran/quran_tab.dart';
import 'package:aslami_app/home/Radio/radio_tab.dart';
import 'package:aslami_app/home/Tasbeh/tasbeh_tab.dart';
import 'package:aslami_app/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int CurrentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        Image.asset('assets/images/main_background.png'),
         Scaffold(
           appBar: AppBar(
             centerTitle: true,
             title: Text('Islami'),
           ),
           bottomNavigationBar: Theme(
             data: Theme.of(context).copyWith(
               canvasColor: MyThemeData.PrimaryColor
             ),
             child: BottomNavigationBar(
               currentIndex: CurrentIndex,
               onTap: (index) {
                 CurrentIndex=index;
                 setState(() {
                 });
               },
               items: const [
                 BottomNavigationBarItem(
                     icon:ImageIcon(AssetImage('assets/images/icon_radio.png')) ,
                 label: 'Radio'),
                 BottomNavigationBarItem(
                     icon:ImageIcon(AssetImage('assets/images/icon_sebha.png')) ,
                 label: 'Tasbeh'),
                 BottomNavigationBarItem(
                     icon:ImageIcon(AssetImage('assets/images/icon_hadeth.png')) ,
                 label: 'Hadeth'),
                 BottomNavigationBarItem(
                     icon:ImageIcon(AssetImage('assets/images/icon_quran.png')) ,
                 label: 'Quran'),
               ],
             ),
           ),
           body: Container(
             child: views[CurrentIndex],
           ),
        ),
      ],
    );
  }
  List<Widget>views=[
    RadioTab(),
    TasbehTab(),
    HadethTab(),
    QuranTab(),
  ];
}
