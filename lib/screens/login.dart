import 'package:ecomapp/screens/home.page.dart';
import 'package:ecomapp/screens/register.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController emailidTextEditingController= TextEditingController();
  TextEditingController passwordTextEditingController= TextEditingController();
  bool _showhide=true;
  final _myformKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: Form(
        key: _myformKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).padding.top + 10,horizontal: width * .03),
          child: Column(
            children: [
              Image.asset("assets/images/loginbanner.png",fit: BoxFit.cover,),
              SizedBox(height: height * .033),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text("Login to Continue",style: TextStyle(
                  color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(height: height * .02),
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
                      controller: emailidTextEditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email id"
                      ),
                      validator: (String? msg) {
                        if (msg == null || msg.isEmpty) {
                          return 'Fill Email id';
                        }
                        return null;
                      },
                    )),
                  ],
                )
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
                      const Icon(Icons.lock,color: Colors.black),
                      SizedBox(width: width * .03),
                      Expanded(child: TextFormField(
                        validator: (msg){
                          if(msg==null || msg.isEmpty){
                            return 'fill password';
                          }
                          return null;
                        },
                        controller: passwordTextEditingController,
                        obscureText: _showhide,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                          suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  _showhide=!_showhide;
                                });
                              },
                              icon: Icon(
                                _showhide?
                                Icons.visibility:Icons.visibility_off,color: Colors.black,))
                        ),
                      )),
                    ],
                  )
              ),
              SizedBox(height: height * .02,),
              Container(
                alignment: Alignment.centerRight,
                child: const Text("Forgot Password",style: TextStyle(
                  color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15.0,
                ),),
              ),
              SizedBox(height: height * .02,),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed:(){
                  if(_myformKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(backgroundColor: Colors.green,content: Text("Success Login...")),
                    );
                   Navigator.of(context).push(
                     MaterialPageRoute(builder: (c)=>const DashboardPage()));
                  }
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
              SizedBox(height: height * .02,),
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
        ),
      )
    );
  }
}
