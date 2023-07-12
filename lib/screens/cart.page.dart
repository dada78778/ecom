import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'select.address.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  int increase=1;
  int increase1=1;
  bool _checkboxDone=false;
  bool _checkboxDone1=false;
  bool _visivledata=false;

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: false,
        title: const Text("Cart",style: TextStyle(
          color: Color(0xff0433BD),
        ),),
        leading: InkWell(
          splashFactory: NoSplash.splashFactory,
            splashColor: Colors.transparent,
            onTap: (){
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back,color: Color(0xff0433BD),)),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.2),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(6),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                        child: Checkbox(
                            value: _checkboxDone,
                            activeColor: const Color(0xff0433BD),
                            onChanged: (value){
                          setState(() {
                            _checkboxDone=!_checkboxDone;
                          });
                            })
                    ),
                    Expanded(
                      flex: 6,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                                child: Image.asset("assets/images/watch.png")),
                            Expanded(
                              flex: 3,
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Product Title',style: TextStyle(
                                          color: Color(0xff0433BD),fontSize: 15.0,fontWeight: FontWeight.bold,
                                        )),
                                        Icon(Icons.delete,color: Colors.red,size: 25),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Text('\$ 55.00',style: TextStyle(
                                          color: Color(0xff5147a6),fontSize: 14.0,fontWeight: FontWeight.bold,
                                        )),
                                        SizedBox(width: width * .15,),
                                        Expanded(child: Row(
                                          children: [
                                            CupertinoButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: (){
                                                setState(() {
                                                  increase--;
                                                });
                                              },
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(.3),
                                                          spreadRadius: 5,
                                                          blurRadius: 3,
                                                        )
                                                      ]
                                                  ),
                                                  child: const Icon(Icons.remove_outlined,color: Color(0xff5147a6))),
                                            ),
                                            Text('$increase',style: const TextStyle(
                                              color: Color(0xff5147a6),fontSize: 14.0,fontWeight: FontWeight.bold,
                                            ),),
                                            CupertinoButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: (){
                                                setState(() {
                                                  increase++;
                                                });
                                              },
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(.3),
                                                          spreadRadius: 5,
                                                          blurRadius: 3,
                                                        )
                                                      ]
                                                  ),
                                                  child: const Icon(Icons.add,color: Color(0xff5147a6))),
                                            ),

                                          ],
                                        )),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(height: height * .02,),
              Container(
                margin: const EdgeInsets.all(6),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Checkbox(
                            value: _checkboxDone1,
                            activeColor: const Color(0xff0433BD),
                            onChanged: (val){
                              setState(() {
                                _checkboxDone1=!_checkboxDone1;
                              });
                            })
                    ),
                    Expanded(
                        flex: 6,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Image.asset("assets/images/watch.png")),
                            Expanded(
                                flex: 3,
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Product Title',style: TextStyle(
                                          color: Color(0xff0433BD),fontSize: 15.0,fontWeight: FontWeight.bold,
                                        )),
                                        Icon(Icons.delete,color: Colors.red,size: 25),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Text('\$ 55.00',style: TextStyle(
                                          color: Color(0xff5147a6),fontSize: 14.0,fontWeight: FontWeight.bold,
                                        )),
                                        SizedBox(width: width * .15,),
                                        Expanded(child: Row(
                                          children: [
                                            CupertinoButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: (){
                                                setState(() {
                                                  increase1--;
                                                });
                                              },
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(.3),
                                                          spreadRadius: 5,
                                                          blurRadius: 3,
                                                        )
                                                      ]
                                                  ),
                                                  child: const Icon(Icons.remove_outlined,color: Color(0xff5147a6))),
                                            ),
                                            Text('$increase1',style: const TextStyle(
                                              color: Color(0xff5147a6),fontSize: 14.0,fontWeight: FontWeight.bold,
                                            ),),
                                            CupertinoButton(
                                              padding: EdgeInsets.zero,
                                              onPressed: (){
                                                setState(() {
                                                  increase1++;
                                                });
                                              },
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(.3),
                                                          spreadRadius: 5,
                                                          blurRadius: 3,
                                                        )
                                                      ]
                                                  ),
                                                  child: const Icon(Icons.add,color: Color(0xff5147a6))),
                                            ),
                                          ],
                                        )),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(height: height * .02,),
              InkWell(
                splashFactory: NoSplash.splashFactory,
                splashColor: Colors.transparent,
                onTap: (){
                  setState(() {
                    _visivledata=!_visivledata;
                  });
                },
                child: Row(
                  children: [
                    const Icon(Icons.add_circle_outline_rounded,color: Color(0xff0433BD)),
                    SizedBox(width: width * .02),
                    const Text('Add Coupon Code',style: TextStyle(
                      color: Color(0xff0433BD),fontSize: 16.0,fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
              SizedBox(height: height * .02,),
              Visibility(
                visible: _visivledata,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    width: width,
                    child: Row(
                      children: [
                        SizedBox(width: width * .02),
                        Expanded(
                          flex: 3,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Coupon Code...",
                              ),
                            )),
                        Expanded(
                          flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              height: height * .04,
                              decoration: BoxDecoration(
                                color: const Color(0xff0dc143),
                                borderRadius: BorderRadius.circular(13),
                              ),
                                child: const Text('Apply',textAlign: TextAlign.center,style: TextStyle(
                                  color: Colors.white,fontWeight: FontWeight.bold,
                                ),))),
                      ],
                    )
                  )
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        height: height * .15,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(13),
              topRight: Radius.circular(13),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 4,
              )
            ]
        ),
        child: Column(
          children: [
            SizedBox(height: height * .01),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("Total: ",style: TextStyle(
                  color: Color(0xff5147a6), fontSize: 18.0,fontWeight: FontWeight.bold,
                )),
                Text("\$ 120",style: TextStyle(
                  color: Color(0xff5147a6), fontSize: 18.0,fontWeight: FontWeight.bold,
                )),
              ],
            ),
            SizedBox(height: height * .014),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const CheckOutPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                width: width * .9,
                decoration: BoxDecoration(
                  color: const Color(0xff5147a6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("Check Out",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0,
                ),),
              ),
            )
          ],
        )
      ),
    );
  }
}
