import 'package:ecomapp/screens/otp.page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  String defaultValue='+91';

  List<String> itemList=['+91','+94','+92'];

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: InkWell(
            splashFactory: NoSplash.splashFactory,
            splashColor: Colors.transparent,
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
              child: const Text("Sign Up For Free",style: TextStyle(
                color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,
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
                    const Icon(Icons.person,color: Colors.black),
                    SizedBox(width: width * .03),
                    Expanded(child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: " Name"
                      ),
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
                    const Icon(Icons.email,color: Colors.black),
                    SizedBox(width: width * .03),
                    Expanded(child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: " Email id"
                      ),
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
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: defaultValue,
                          isExpanded: false,
                          icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black),
                          style: const TextStyle(
                            color: Color(0xff0433BD),fontSize: 16.0,
                          ),
                          items: itemList.map((String  itemvalue) {
                            return DropdownMenuItem(
                                value: itemvalue,
                                child: Text(itemvalue,style: const TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,
                                ),));
                          }).toList(),
                          onChanged: (String ? newValue){
                            setState(() {
                              defaultValue= newValue!;
                            });
                          }),
                    ),
                    SizedBox(width: width * .03),
                    Expanded(child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: " Mobile No."
                      ),
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
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: " Password"
                      ),
                    )),
                  ],
                )
            ),
            SizedBox(height: height * .03),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const OtpPage()),
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
