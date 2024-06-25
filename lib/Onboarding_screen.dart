import 'package:flutter/material.dart';
import 'package:uxe_loft/Login.dart';

import 'Appcolor.dart';
import 'Onboarding_context.dart';
class Onboarding_screen extends StatefulWidget {
  const Onboarding_screen({super.key});

  @override
  State<Onboarding_screen> createState() => _Onboarding_screenState();
}

class _Onboarding_screenState extends State<Onboarding_screen> {

  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
          padding: const EdgeInsets.all(1),
          child: PageView.builder(
            controller: _controller,
            physics: ScrollPhysics(),
            onPageChanged: (int index){
              setState((){
                currentIndex = index;
              });
            },
            itemCount: contents.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Column(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 140,),
                      Image.asset(contents[index].image),
                      SizedBox(height: 20,),
                      Column(
                        children: [
                          SizedBox(height: 20,),

                          SizedBox(height: 62,),
                          Container(
                            height: 330,
                           // width: 375,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24)),
                              color: Colors.white
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 25,),
                                Text(contents[index].title,
                                  textAlign: TextAlign.center,

                                  style:
                                  TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Appcolor.PrimaryColor),),
                                SizedBox(height: 10,),
                                Text(contents[index].discription,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.grey),),
                                InkWell(
                                  onTap: (){
                                    if(index==contents.length-1){
                                      //Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                                    }
                                    _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 50,left: 120,),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [

                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                                          },
                                            child: Text('Skip >>>',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Appcolor.PrimaryColor),)),

                                        InkWell(
                                            onTap: (){
                                              if(index==contents.length-1){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                                              }
                                              _controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
                                            },
                                            child: Image.asset('assets/arro.png',)
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ],
              );
            },)
      ),
    );
  }
}
