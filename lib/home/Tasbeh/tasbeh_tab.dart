import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aslami_app/main.dart';
class TasbehTab extends StatefulWidget {

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int count=0;
  String Text1='الحمد لله';
  void TextChange(String do3aa) {
    if(count<=33)
      {
        Text1='الحمد لله';
      }
    else if (count>33 && count<=66)
      {
        Text1='سبحان الله';
      }
    else if(count>66&&count<=99)
      {
        Text1='الله اكبر';
      }
    else if(count==100)
        {
          Text1='اشهد ان لا اله الا الله وحده لا شريك له الملك والحمد وهو علب كل شئ قدير ';
        }
    else if(count>100)
      {
        resCount();
        Text1='';
      }
  }
  void incCount() {
    setState(() {
      count++;
    });
  }
  void resCount(){
    setState(() {
      count=0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: MaterialButton(onPressed: (){},
                child:const ImageIcon(AssetImage('assets/images/sebha_head_image.png'),color: MyThemeData.PrimaryColor,size:50,),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    incCount();
                     TextChange(Text1);
                  });
                },
                  child: const ImageIcon(AssetImage('assets/images/sebha_image.png'),size: 150,color: MyThemeData.PrimaryColor,)),
              const SizedBox(
                height: 15,
              ),
              const Text('عدد التسبيحات',style:TextStyle(fontWeight: FontWeight.bold) ,),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyThemeData.PrimaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                alignment: AlignmentDirectional.center,
                height: 40,
                width: 40,
                  child: Text('$count',style: TextStyle(fontWeight: FontWeight.bold),)),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyThemeData.PrimaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                alignment: AlignmentDirectional.center,
                width: 100,
                  height: 40,
                  child:  Text(Text1),
              ),
            ],
          ),
        ),
    ]
    );
  }
}
