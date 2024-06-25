import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uxe_loft/Home.dart';

import 'Appcolor.dart';
import 'Home1.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool passwordVisible=false;
  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25,),
                Center(child: Text("Create Account",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Center(child: Text("Sign Up",style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold),)),
                SizedBox(height: 50,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none
                          )
                      ),
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined),
                      contentPadding: EdgeInsets.all(7),
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none
                          )
                      ),
                      hintText: "Special Characters ",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                                () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      contentPadding: EdgeInsets.all(7),
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none
                          )
                      ),
                      hintText: "************",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                                () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      contentPadding: EdgeInsets.all(7),
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
                SizedBox(height: 20,),
                IntlPhoneField(
                  flagsButtonPadding: const EdgeInsets.all(8),
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: const InputDecoration(

                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),bottomRight: Radius.circular(10)
                        ),
                        borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none
                        )
                    ),
                  ),
                  initialCountryCode: 'IN',

                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home1(),));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Appcolor.PrimaryColor1
                    ),
                    child: Center(child: Text("Next",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),),
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
                         Icon(Icons.apple),
                          Text('Apple')
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
              ],
            ),
          ),
        ),
      ),

    );
  }
}
