import 'package:flutter/material.dart';
import 'package:uxe_loft/Otp.dart';
import 'package:uxe_loft/SignUp.dart';

import 'Appcolor.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text(''),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: IconButton(onPressed: (){

          }, icon: Icon(Icons.clear,size: 25,color: Colors.black,)),
        )
      ],
      automaticallyImplyLeading: false
      ,
    ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 25,),
                Center(child: Image.asset('assets/sp.png')),
                SizedBox(height: 25,),
                Text('Welcome Back!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text('Login to continue',style: TextStyle(color: Colors.grey),),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none
                          )
                      ),
                      hintText: "Phone Number",
                      prefixIcon: Icon(Icons.phone_android),
                      contentPadding: EdgeInsets.all(7),
                      filled: true,
                      fillColor: Colors.white
                  ),
                  // validator: _validateEmail,
                ),
                SizedBox(height: 80,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Otp(),));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Appcolor.PrimaryColor1
                    ),
                    child: Center(child: Text("Get OTP",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),),
                  ),
                ),
                SizedBox(height: 80,),
                Text('Or Continue With'),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Image.asset('assets/Google.png'),
                          Text('Google')
                        ],
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 55,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook),
                          Text('Facebook')
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account?',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));
                      },
                        child: Text('SIGN UP',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Appcolor.PrimaryColor1,decoration: TextDecoration.underline),))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
