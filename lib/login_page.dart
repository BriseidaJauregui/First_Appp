import 'package:first_app/place_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:10),
              child: FlutterLogo(size:100),
            ),
            Padding(
              padding: EdgeInsets.only(top:16),
              child: Text(
                "TravelApp",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "greatwishes",
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.lightBlue
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: Text(
                "Welcome",
                textAlign: TextAlign.center,
                style: GoogleFonts.galada(
                  textStyle: TextStyle(
                    color: Colors.cyan,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  )
                ),
                //style: TextStyle(
                  //fontFamily: "simplicity",
                  //color: Colors.cyan,
                  //fontSize: 25,
                  //fontWeight: FontWeight.w500,
                //),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:16, left: 8, right: 8),
              child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 300,
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black12,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(Icons.account_circle, color: Colors.black),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)
                                    )
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: TextFormField(
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black
                                    ),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "User",
                                        fillColor: Colors.white,
                                        filled: true
                                    ),
                                  ),
                                ) ,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:16, left: 8, right: 8),
              child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 300,
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black12,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Icon(Icons.vpn_key, color: Colors.black),
                              ),
                              Container(
                                width: 250,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)
                                    )
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: TextFormField(
                                    obscureText: true,
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black
                                    ),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        fillColor: Colors.white,
                                        filled: true
                                    ),
                                  ),
                                ) ,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
              ),
            ),
            Padding(
                padding:
                EdgeInsets.only(top:20, left: 8, right: 8),
              child: Container(
                width: 300,
                height: 130,
                padding: EdgeInsets.all(40),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => PlacePage()
                        )
                    );
                  },
                  elevation: 5,
                  color: Colors.blueAccent,
                  child: Text(
                      "Log in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18
                          )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}