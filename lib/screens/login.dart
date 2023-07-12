import 'package:ecomapp/screens/dashboard.page.dart';
import 'package:ecomapp/screens/register.page.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).padding.top + 10,horizontal: width * .03),
        child: Column(
          children: [
            Image.asset("assets/images/loginbanner.png",fit: BoxFit.cover,),
            SizedBox(height: height * .02),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("Login to Continue",style: TextStyle(
                color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: height * .03),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    spreadRadius: 10,
                    blurRadius: 10,
                  )
                ]
              ),
              child: Row(
                children: [
                  SizedBox(width: width * .03),
                  const Icon(Icons.email_outlined,color: Colors.black),
                  SizedBox(width: width * .03),
                  Expanded(child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email id"
                    ),
                  )),
                ],
              )
            ),
            SizedBox(height: height * .04),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        spreadRadius: 10,
                        blurRadius: 10,
                      )
                    ]
                ),
                child: Row(
                  children: [
                    SizedBox(width: width * .03),
                    const Icon(Icons.lock,color: Colors.black),
                    SizedBox(width: width * .03),
                    Expanded(child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password"
                      ),
                    )),
                  ],
                )
            ),
            SizedBox(height: height * .03,),
            Container(
              alignment: Alignment.centerRight,
              child: const Text("Forgot Password",style: TextStyle(
                color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15.0,
              ),),
            ),
            SizedBox(height: height * .03,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const DashboardPage()),
                );
              },
              child: Container(
                alignment: Alignment.center,
                height: height * .06,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(55)
                ),
                child: const Text("Login",style: TextStyle(
                  color: Colors.white,fontSize: 18.0,
                ),),
              ),
            ),
            SizedBox(height: height * .05,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const RegisterPage()),
                );
              },
              child: RichText(text: const TextSpan(text: 'New to Logistic?',style: TextStyle(
                color: Colors.black,fontSize: 18.0,
              ),children: [
                TextSpan(text: ' Register',style: TextStyle(
                  color: Colors.blue,
                ))
              ])),
            ),

          ],
        ),
      )
    );
  }
}
