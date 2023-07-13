import 'package:ecomapp/screens/cart.page.dart';
import 'package:ecomapp/screens/product.info.dart';
import 'package:ecomapp/screens/wish.list.page.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool pressed1 = true;
  bool pressed2 = true;
  bool pressed3 = true;
  bool pressed4 = true;
  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.sort_outlined,color: Colors.black,),
        title: const Text('Shop',style: TextStyle(
          color: Colors.black,
        ),),
        actions: [
          InkWell(
            splashFactory: NoSplash.splashFactory,
            splashColor: Colors.transparent,
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (c)=>const CartPage()));
            },
              child: const Icon(Icons.shopping_cart,color: Colors.black)),
          SizedBox(width: width * .0001),
          InkWell(
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (c)=>const WishListPage()));
            },
            child: Container(
              padding: EdgeInsets.only(
                right: width * .01,
              ),
              child: Stack(
                children: [
                  Center(
                    child: SizedBox(
                      width: width * .14,
                      child: IconButton(
                        onPressed: () {
                        },
                        icon:  const Icon(
                          Icons.favorite_border, color: Colors.red,size: 25,),
                      ),
                    ),
                  ),
                  Positioned(right: width * .01, top: height * .01, child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: const Text('02',style: TextStyle(
                      color: Colors.black,
                    )),
                  )),
                ],
              ),
            ),
          ),
          SizedBox(width: width * .001,),
        ],
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
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
          padding: const EdgeInsets.all(15),
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * .04),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Expanded(child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search here..."
                      ),
                    )),
                    const Icon(Icons.camera_alt,color: Colors.black,),
                  ],
                ),
              ),
              SizedBox(height: height * .03),
              Container(
                alignment: Alignment.centerLeft,
                  child: const Text("Categories",style: TextStyle(
                    fontSize: 20.0,color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                  ),)),
              SizedBox(height: height * .03),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i=1;i<=10;i++)
                    Container(
                      padding: const EdgeInsets.all(6),
                      margin: EdgeInsets.only(right: width * .05),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: width * .22,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex:2,
                                child: Image.asset("assets/images/watch.png")),
                            const Expanded(
                              flex: 5,
                                child: Text("watch",style: TextStyle(
                                  color: Colors.black,fontSize: 14.0,
                                ),)),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(height: height * .03),
              SingleChildScrollView(
                child: GridView.count(
                    crossAxisCount: 2,
                  childAspectRatio: 1/1.5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    // for(int i=1;i<=10;i++)
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: const Color(0xff5147a6),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                  child: const Text('-50%',style: TextStyle(
                                    color: Colors.white,fontSize: 13.0,
                                  ),)),
                              IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: (){
                                  setState(() {
                                    pressed1 = !pressed1;
                                  });
                                },
                                  icon: Icon(
                                      pressed1 ?
                                      Icons.favorite_border : Icons.favorite,color: Colors.red)),
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (c)=>const ProductInfo()),
                              );
                            },
                            child: SizedBox(
                              width: width,
                              height: height * .13,
                              child: Image.asset("assets/images/watch.png",fit: BoxFit.contain,),
                            )),
                          const ListTile(
                            title: Text("Product title",maxLines: 1,style: TextStyle(
                              color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                            )),
                            subtitle: Text("Write description of Product",maxLines: 2,style: TextStyle(
                              color: Color(0xff5147a6),
                            ))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text('\$ 55.00',style: TextStyle(
                                color: Color(0xff5147a6),fontSize: 14.0,fontWeight: FontWeight.bold,
                              )),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (c)=>const CartPage()),
                                  );
                                },
                                  child: const Icon(Icons.add_circle_outline,color: Color(0xff5147a6),size: 25)),
                            ],
                          ),
                          SizedBox(height: height * .01),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff5147a6),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: const Text('-50%',style: TextStyle(
                                    color: Colors.white,fontSize: 13.0,
                                  ))),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: (){
                                    setState(() {
                                      pressed2 = !pressed2;
                                    });
                                  },
                                  icon: Icon(
                                      pressed2 ?
                                      Icons.favorite_border : Icons.favorite,color: Colors.red)),
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (c)=>const ProductInfo()),
                              );
                            },
                            child: SizedBox(
                              width: width,
                              height: height * .13,
                              child: Image.asset("assets/images/watch.png",fit: BoxFit.contain,),
                            )),
                          const ListTile(
                            title: Text("Product title",maxLines: 1,style: TextStyle(
                              color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                            ),),
                            subtitle: Text("Write description of Product",maxLines: 2,style: TextStyle(
                              color: Color(0xff5147a6),
                            ))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text('\$ 55.00',style: TextStyle(
                                color: Color(0xff5147a6),fontSize: 14.0,fontWeight: FontWeight.bold,
                              )),
                              InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (c)=>const CartPage()),
                                    );
                                  },
                                  child: const Icon(Icons.add_circle_outline,color: Color(0xff5147a6),size: 25)),
                            ],
                          ),
                          SizedBox(height: height * .01),
                        ])),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff5147a6),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: const Text('-50%',style: TextStyle(
                                    color: Colors.white,fontSize: 13.0,
                                  ))),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: (){
                                    setState(() {
                                      pressed3 = !pressed3;
                                    });
                                  },
                                  icon: Icon(
                                      pressed3 ?
                                      Icons.favorite_border : Icons.favorite,color: Colors.red)),
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (c)=>const ProductInfo()),
                              );
                            },
                            child: SizedBox(
                              width: width,
                              height: height * .13,
                              child: Image.asset("assets/images/watch.png",fit: BoxFit.contain,),
                            )),
                          const ListTile(
                            title: Text("Product title",maxLines: 1,style: TextStyle(
                              color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                            )),
                            subtitle: Text("Write description of Product",maxLines: 2,style: TextStyle(
                              color: Color(0xff5147a6),
                            ))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text('\$ 55.00',style: TextStyle(
                                color: Color(0xff5147a6),fontSize: 14.0,fontWeight: FontWeight.bold,
                              )),
                              InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (c)=>const CartPage()),
                                    );
                                  },
                                  child: const Icon(Icons.add_circle_outline,color: Color(0xff5147a6),size: 25)),
                            ],
                          ),
                          SizedBox(height: height * .01),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff5147a6),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: const Text('-50%',style: TextStyle(
                                    color: Colors.white,fontSize: 13.0,
                                  ))),
                              IconButton(
                                  padding: EdgeInsets.zero,
                                  onPressed: (){
                                    setState(() {
                                      pressed4 = !pressed4;
                                    });
                                  },
                                  icon: Icon(
                                      pressed4 ?
                                      Icons.favorite_border : Icons.favorite,color: Colors.red)),
                            ],
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (c)=>const ProductInfo()),
                              );
                            },
                            child: SizedBox(
                              width: width,
                              height: height * .13,
                              child: Image.asset("assets/images/watch.png",fit: BoxFit.contain,),
                            )),
                          const ListTile(
                            title: Text("Product title",maxLines: 1,style: TextStyle(
                              color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                            )),
                            subtitle: Text("Write description of Product",maxLines: 2,style: TextStyle(
                              color: Color(0xff5147a6),
                            ))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text('\$ 55.00',style: TextStyle(
                                color: Color(0xff5147a6),fontSize: 14.0,fontWeight: FontWeight.bold,
                              )),
                              InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (c)=>const CartPage()),
                                    );
                                  },
                                  child: const Icon(Icons.add_circle_outline,color: Color(0xff5147a6),size: 25)),
                            ],
                          ),
                          SizedBox(height: height * .01),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
