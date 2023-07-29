import 'package:ecomapp/screens/home.page.dart';
import 'package:flutter/material.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width= MediaQuery.of(context).size.width;
    final height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(child: Image.asset("assets/images/successorder.png")),
            const Text('Your Order was Successfull!',style: TextStyle(
              color: Color(0xff5147a6),fontSize: 20.0,fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: height * .03,),
            InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c)=>const DashboardPage()));
              },
              child: Container(
                width: width,
                alignment: Alignment.center,
                height: height * .06,
                decoration: BoxDecoration(
                  color: const Color(0xff5147a6),
                  borderRadius: BorderRadius.circular(53),
                ),
                  child: const Text('Back To Home',style: TextStyle(
                   color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
