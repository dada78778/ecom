import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomapp/screens/cart.page.dart';
import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text("Your\n Wish List",style: TextStyle(
          color: Color(0xff5147a6),fontSize: 15.0,fontWeight: FontWeight.bold,
        ),),
        leading: InkWell(
          splashFactory: NoSplash.splashFactory,
          splashColor: Colors.transparent,
          onTap: (){
            Navigator.of(context).pop();
          },
            child: const Icon(Icons.arrow_back,color: Color(0xff5147a6))),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            for(int i=1;i<=2;i++)
              Container(
                margin: const EdgeInsets.all(10),
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
                        const Icon(Icons.favorite_rounded,color: Colors.red),
                      ],
                    ),
                    CarouselSlider(
                        items: [
                          Image.asset("assets/images/watch.png"),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          height: height * .25,
                        ),
                    ),
                    const ListTile(
                      title: Text("Product title",maxLines: 1,style: TextStyle(
                        color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                      ),),
                      subtitle: Text("Write description of Product",maxLines: 2,style: TextStyle(
                        color: Color(0xff5147a6),
                      ),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text('\$ 55.00',style: TextStyle(
                          color: Color(0xff5147a6),fontSize: 20.0,fontWeight: FontWeight.bold,
                        )),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (c)=>const CartPage()));
                          },
                            child: const Icon(Icons.add_circle_outline,color: Color(0xff5147a6),size: 25)),
                      ],
                    ),
                    SizedBox(height: height * .01),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
