import 'package:flutter/material.dart';
import 'package:interviewtwst/colors.dart';

class accountFragment extends StatefulWidget {

  @override
  _accountFragmentState createState() => _accountFragmentState();
}

class _accountFragmentState extends State<accountFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Material(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            elevation: 1.5,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1234 **** **** 4228",style: TextStyle(color: primaryDark,fontWeight: FontWeight.w600),),
                    Text("Card Valid Through",style: TextStyle(color: primaryDark)),
                  ],
                ),
                  SizedBox(height: 7,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Al Nahda Branch - Dubai,UAE",style: TextStyle(color: primaryDark)),
                      Text("06/23",style: TextStyle(color: primaryDark,fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("130,000,000 IQD",style: TextStyle(color: primaryLight,fontWeight: FontWeight.w600)),
                      Text("Saving Account",style: TextStyle(color: primaryLight)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Material(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            elevation: 1.5,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                  children: [
                    Container(height: 3,width: 20,color: primaryLight,),
                    SizedBox(width: 5,),
                    Text("Transfer Amount",style: TextStyle(color: primaryDark,fontWeight: FontWeight.w600)),
                  ],
                ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: Image.asset("assets/wallet.png"),
                      ),
                      SizedBox(width: 15,),
                      Text("1234 **** **** 4228",style: TextStyle(color: primaryDark)),
                      Expanded(child: Container()),
                      Icon(Icons.arrow_forward_ios_rounded,size: 15,)
                    ],
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Material(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            elevation: 1.5,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Image.asset("assets/branch.png"),
                  ),
                  SizedBox(width: 15,),
                  Text("1234 **** **** 4228",style: TextStyle(color: primaryDark)),
                  Expanded(child: Container()),
                  Icon(Icons.arrow_forward_ios_rounded,size: 15,)
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Material(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
            elevation: 1.5,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: Image.asset("assets/rotate.png"),
                  ),
                  SizedBox(width: 15,),
                  Text("1234 **** **** 4228",style: TextStyle(color: primaryDark)),
                  Expanded(child: Container()),
                  Icon(Icons.arrow_forward_ios_rounded,size: 15,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
