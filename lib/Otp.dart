import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:uxe_loft/Appcolor.dart';
class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        leading: ClipRect(
          clipBehavior: Clip.antiAlias,
          child: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios,color: Appcolor.PrimaryColor1,),
            
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child:Column(
              children: [
                
                Text('OTP Verification',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                Text('Enter the verification code we just sent on your\n email address.',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: PinCodeTextField(
                      maxLength: 4,
                      autofocus: true,
                      pinBoxHeight: 50,
                      pinBoxWidth: 50,
                      pinBoxBorderWidth: 1,
                      pinBoxRadius: 8,
                      pinBoxOuterPadding: EdgeInsets.symmetric(horizontal: 15),

                      onDone: (text){

                      },
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                InkWell(
                  onTap: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (context) => Otp(),));
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Appcolor.PrimaryColor1
                    ),
                    child: Center(child: Text("verifyP",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
