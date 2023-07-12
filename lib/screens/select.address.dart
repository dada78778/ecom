import 'package:ecomapp/screens/payment.page.dart';
import 'package:flutter/material.dart';

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({super.key});

  @override
  State<CheckOutPage> createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {

  int _addressselect=1;

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
        title: const Text("Address",style: TextStyle(
          color: Color(0xff5147a6),
        ),),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: width * .7),
              width: width,
              height: height * .05,
              decoration: BoxDecoration(
                color: Color(0xff5147a6),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text('Add New',textAlign: TextAlign.center,style: TextStyle(
               color: Colors.white,fontWeight: FontWeight.bold,
              )),
            ),
            SizedBox(height: height * .03),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff5147a6).withOpacity(.2),
                    spreadRadius: 1,
                    blurRadius: 15,
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Radio(
                      value: 1,
                      activeColor: Color(0xff5147a6),
                      groupValue: _addressselect,
                      onChanged: (value){
                        setState(() {
                          _addressselect=value!;
                        });
                      },
                  ),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ritik',style: TextStyle(
                       fontSize: 15.0,fontWeight: FontWeight.bold,
                      )),
                      SizedBox(height: height * .004),
                      Text('+91 9625309369'),
                      SizedBox(height: height * .01),
                      Text("1/11225 street No.13 subhash park shahadara Delhi 110032"),
                    ],
                  )),
                ],
              ),
            ),
            SizedBox(height: height * .03),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff5147a6).withOpacity(.2),
                      spreadRadius: 1,
                      blurRadius: 15,
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Radio(
                    value: 2,
                    groupValue: _addressselect,
                    activeColor: Color(0xff5147a6),
                    onChanged: (value){
                      setState(() {
                        _addressselect=value!;
                      });
                    },
                  ),
                  Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Neeraj',style: TextStyle(
                        fontSize: 15.0,fontWeight: FontWeight.bold,
                      )),
                      SizedBox(height: height * .004),
                      Text('+91 9090909090'),
                      SizedBox(height: height * .01),
                      Text("1/11225 street No.13 Agra park shahadara Delhi 110032"),
                    ],
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (c)=>PaymentPage()),
          );
        },
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(4),
          height: height * .07,
          decoration: const BoxDecoration(
              color: Color(0xff5147a6),
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
          child: Text("Proceed To Pay",style: TextStyle(
            color: Colors.white,fontSize: 18.0,
          ),),
        ),
      ),
    );
  }
}
