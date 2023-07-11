import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                                          color: Color(0xff0433BD),fontSize: 17.0,
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
                                          color: Color(0xff0433BD),fontSize: 17.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
