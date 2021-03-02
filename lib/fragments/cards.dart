import 'package:flutter/material.dart';
import 'package:interviewtwst/colors.dart';

class cardFragment extends StatefulWidget {

  @override
  _cardFragmentState createState() => _cardFragmentState();
}

class _cardFragmentState extends State<cardFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(margin: EdgeInsets.only(top: 20,left:20,right: 20),
            height: 200,
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: primaryLight,
              child: InkWell(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Container(
                          width: 30,
                          height: 30,
                          child: Image.asset("assets/mastercard.png")
                      ),
                    ),
                    Positioned(
                        right: 20.0,
                        top: 20.0,
                        child: Text(
                          'Current Account',
                          style: TextStyle(color: Colors.white),
                        )),
                    Positioned(
                        right: 20.0,
                        top: 40.0,
                        child: Text(
                          '1234   xxxx   xxxx   2443',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        right: 20.0,
                        bottom: 40.0,
                        child: Text(
                          'Valid Through',
                          style: TextStyle(color: Colors.white),
                        )),
                    Positioned(
                        right: 20.0,
                        bottom: 20.0,
                        child: Text(
                          '03/20',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        left: 20.0,
                        bottom: 40.0,
                        child: Text(
                          'Balance',
                          style: TextStyle(color: Colors.white),
                        )),
                    Positioned(
                        left: 20.0,
                        bottom: 20.0,
                        child: Text(
                          '130,000,000 IQD',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
                onTap: () {

                },
              ),
            ),
          ),
          Container(margin: EdgeInsets.only(top: 20,left:20,right: 20),
            height: 200,
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: accent,
              child: InkWell(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Container(
                          width: 30,
                          height: 30,
                          child: Image.asset("assets/mastercard.png")
                      ),
                    ),
                    Positioned(
                        right: 20.0,
                        top: 20.0,
                        child: Text(
                          'Current Account',
                          style: TextStyle(color: Colors.white),
                        )),
                    Positioned(
                        right: 20.0,
                        top: 40.0,
                        child: Text(
                          '1234   xxxx   xxxx   2443',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        right: 20.0,
                        bottom: 40.0,
                        child: Text(
                          'Valid Through',
                          style: TextStyle(color: Colors.white),
                        )),
                    Positioned(
                        right: 20.0,
                        bottom: 20.0,
                        child: Text(
                          '03/20',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                        )),
                    Positioned(
                        left: 20.0,
                        bottom: 40.0,
                        child: Text(
                          'Balance',
                          style: TextStyle(color: Colors.white),
                        )),
                    Positioned(
                        left: 20.0,
                        bottom: 20.0,
                        child: Text(
                          '130,000,000 IQD',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
                onTap: () {

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
