import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({super.key});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {

  int increase=1;

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        leading: InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back,color: Color(0xff5147a6),)),
        centerTitle: false,
        title: const Text("Product",style: TextStyle(
          color: Color(0xff5147a6),
        ),),
        backgroundColor: Colors.transparent,
        actions: [
          const Icon(Icons.favorite_border,color: Colors.red,size: 25),
          SizedBox(width: width * .02,),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: height * .03),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.2),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )
              ),
              alignment: Alignment.center,
              child: Image.asset("assets/images/watch.png",fit: BoxFit.cover,),
            ),
            SizedBox(height: height * .03,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              alignment: Alignment.centerLeft,
              child: const Text("Product Title",style: TextStyle(
                color: Color(0xff5147a6),fontSize: 20.0,fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: height * .03,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.favorite,color: Color(0xff5147a6)),
                      Icon(Icons.favorite,color: Color(0xff5147a6)),
                      Icon(Icons.favorite,color: Color(0xff5147a6)),
                      Icon(Icons.favorite_border,color: Color(0xff5147a6)),
                      Icon(Icons.favorite_border,color: Color(0xff5147a6)),
                    ],
                  ),
                  Row(
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
                      SizedBox(width: width * .03),
                      Text('$increase',style: const TextStyle(
                        color: Color(0xff5147a6),fontSize: 14.0,fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: width * .03),
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
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .02,),
           const ListTile(
             subtitle: Text("This is more details description of the Product. You can write here more about the Product. This is lengthy description.",textAlign: TextAlign.justify,style: TextStyle(
               color: Color(0xff5147a6),fontSize: 16.0,
             )),
           ),
            SizedBox(height: height * .02,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              child: Row(
                children: [
                  const Expanded(
                    flex: 1,
                      child: Text('Size: ',style: TextStyle(
                        color: Color(0xff5147a6),fontSize: 18.0,fontWeight: FontWeight.bold,
                      ),)),
                  Expanded(
                    flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
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
                              child: const Text("5",style: TextStyle(
                                color: Color(0xff5147a6),fontSize: 18.0,fontWeight: FontWeight.bold,
                              ),)),
                          Container(
                              padding: const EdgeInsets.all(6),
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
                              child: const Text("6",style: TextStyle(
                                color: Color(0xff5147a6),fontSize: 18.0,fontWeight: FontWeight.bold,
                              ),)),
                          Container(
                              padding: const EdgeInsets.all(6),
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
                              child: const Text("7",style: TextStyle(
                                color: Color(0xff5147a6),fontSize: 18.0,fontWeight: FontWeight.bold,
                              ),)),
                          Container(
                              padding: const EdgeInsets.all(6),
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
                              child: const Text("8",style: TextStyle(
                                color: Color(0xff5147a6),fontSize: 18.0,fontWeight: FontWeight.bold,
                              ),)),
                          Container(
                              padding: const EdgeInsets.all(6),
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
                              child: const Text("9",style: TextStyle(
                                color: Color(0xff5147a6),fontSize: 18.0,fontWeight: FontWeight.bold,
                              ),)),
                        ],
                      )),
                  const Expanded(
                    flex: 1,
                      child: Text('')),
                ],
              ),
            ),
            SizedBox(height: height * .02,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * .04),
              child: Row(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Text('Color: ',style: TextStyle(
                        color: Color(0xff5147a6),fontSize: 18.0,fontWeight: FontWeight.bold,
                      ),)),
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                              )),
                          Container(
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              )),
                          Container(
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              )),
                          Container(
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                color: Colors.pink,
                                shape: BoxShape.circle,
                              )),
                          Container(
                              padding: const EdgeInsets.all(12),
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                                shape: BoxShape.circle,
                              )),
                        ],
                      )),
                  const Expanded(
                      flex: 1,
                      child: Text('')),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(4),
        height: height * .07,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text("\$ 120",style: TextStyle(
              color: Color(0xff5147a6), fontSize: 18.0,fontWeight: FontWeight.bold,
            ),),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xff5147a6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(Icons.shopping_cart,color: Colors.white,),
                  SizedBox(width: width * .02),
                  const Text('Add To Cart',style: TextStyle(
                    color: Colors.white,fontSize: 16.0,
                  ),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
