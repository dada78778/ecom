import 'package:ecomapp/login.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: Image.asset("assets/images/signup.png"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Enter OTP",style: TextStyle(
                color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: height * .03),
            Pinput(
              length: 6,
              defaultPinTheme: PinTheme(
                textStyle: const TextStyle(
                  fontSize: 30.0,
                ),
                width: width * .2,
                height: height * .07,
                decoration: BoxDecoration(
                  color: const Color(0xfff6f8fa),
                  border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: height * .03),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const Login()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                width: width,
                height: height * .06,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text("Continue",style: TextStyle(
                  color: Colors.white,fontSize: 20.0,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
