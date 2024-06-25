import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Center(child: Image.asset('assets/sp.png',height: 80,width: 80,)),
       leading: Icon(Icons.menu),
       actions: [
         IconButton(onPressed: (){

         }, icon: Icon(Icons.search)),
         IconButton(onPressed: (){

         }, icon: Icon(Icons.qr_code_scanner_sharp))
       ],
       automaticallyImplyLeading: false,
     ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                
                Text('Hi, Andrea'),
                Text('What are you looking for\n today?',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Image.asset('assets/img.png')
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
