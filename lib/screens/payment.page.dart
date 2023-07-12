import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomapp/screens/order.success.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  int _value=0;

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
            child: const Icon(Icons.arrow_back,color: Color(0xff5147a6),)),
        centerTitle: false,
        title: const Text("Payment",style: TextStyle(
          color: Color(0xff5147a6),
        ),),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Divider(),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text("All Methods here...",style: TextStyle(
               fontSize: 14.0,color: Color(0xff5147a6),fontWeight: FontWeight.bold,
              )),
            ),
            const Divider(),
            SizedBox(height: height * .02),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                      child: Radio(
                          value: 1,
                          groupValue: _value,
                          activeColor: const Color(0xff5147a6),
                          onChanged: (value){
                                setState(() {
                                  _value=value!;
                                });
                          })),
                  const Expanded(
                    flex: 2,
                      child: Text("UPI",style: TextStyle(
                        color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                      ),)),
                  Expanded(
                    flex: 1,
                      child:
                      CarouselSlider(
                        items: [
                          Image.asset(
                            'assets/images/phonepay.png',
                            width: width * .8,
                          ),
                          Image.asset(
                            'assets/images/gpay.png',
                            width: width * .8,
                          ),
                        ],
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: height * .06,
                          autoPlay: true,
                        ),
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .03),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 1,
                      blurRadius: 10,
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      flex: 1,
                      child: Radio(
                          value: 2,
                          groupValue: _value,
                          activeColor: const Color(0xff5147a6),
                          onChanged: (value){
                            setState(() {
                              _value=value!;
                            });
                          })),
                  const Expanded(
                      flex: 2,
                      child: Text("Net Banking",style: TextStyle(
                        color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                      ),)),
                  Expanded(
                    flex: 1,
                    child:
                    CarouselSlider(
                      items: [
                        Image.asset(
                          'assets/images/axixbank.png',
                          width: width * .8,
                        ),
                        Image.asset(
                          'assets/images/hdfc.png',
                          width: width * .8,
                        ),
                        Image.asset(
                          'assets/images/kotak.png',
                          width: width * .8,
                        ),
                      ],
                      options: CarouselOptions(
                        viewportFraction: 1,
                        height: height * .06,
                        autoPlay: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * .03),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 1,
                      blurRadius: 10,
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      flex: 1,
                      child: Radio(
                          value: 3,
                          groupValue: _value,
                          activeColor: const Color(0xff5147a6),
                          onChanged: (value){
                            setState(() {
                              _value=value!;
                            });
                          })),
                  const Expanded(
                      flex: 3,
                      child: Text("Credit card / Debit Card",style: TextStyle(
                        color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                      ),)),

                ],
              ),
            ),
            SizedBox(height: height * .03),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 1,
                      blurRadius: 10,
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                      flex: 1,
                      child: Radio(
                          value: 4,
                          groupValue: _value,
                          activeColor: const Color(0xff5147a6),
                          onChanged: (value){
                            setState(() {
                              _value=value!;
                            });
                          })),
                  const Expanded(
                      flex: 3,
                      child: Text("Cash On Delivery",style: TextStyle(
                        color: Color(0xff5147a6),fontWeight: FontWeight.bold,
                      ),)),

                ],
              ),
            ),
            SizedBox(height: height * .1),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const OrderSuccessPage())
                );
              },
              child: Container(
                width: width,
                height: height * .06,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: const Color(0xff5147a6),
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        spreadRadius: 1,
                        blurRadius: 10,
                      )
                    ]
                ),
                child: const Text('Pay',style: TextStyle(
                  color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
