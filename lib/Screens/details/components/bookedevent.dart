import 'package:flutter/material.dart';
import 'package:travel_app/Models/Place.dart';
import 'package:travel_app/Screens/home/components/grid_place_card.dart';
import 'package:travel_app/Screens/home/components/viewall.dart';

class EventBooked extends StatefulWidget {
  const EventBooked({Key key}) : super(key: key);

  @override
  _EventBookedState createState() => _EventBookedState();
}

class _EventBookedState extends State<EventBooked> {

  // final Place place;
  // final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Places", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Colors.black,)),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 110,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GridPlaceCard()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                          )]
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Nationalmuseum.jpg')
                                )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("National Museum", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  SizedBox(height: 0),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                    ],
                                  ),
                                  SizedBox(height: 0),
                                  Text("Tap to get details and directions")
                                ],
                              )),
                          // IconButton(
                          //   icon: Icon(Icons.shopping_basket_rounded),
                          // onPressed: null)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 110,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GridPlaceCard()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                          )]
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Qalatalabharin.jpg')
                                )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Qalat-Al-Bahrain", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  SizedBox(height: 0),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                    ],
                                  ),
                                  SizedBox(height: 0),
                                  Text("Tap to get details and directions")
                                ],
                              )),
                          // IconButton(
                          //   icon: Icon(Icons.shopping_basket_rounded),
                          // onPressed: null)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 110,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GridPlaceCard()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                          )]
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/souqalqaysarriya.jpg')
                                )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Souq-Al-Qaysarriya", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  SizedBox(height: 0),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                    ],
                                  ),
                                  SizedBox(height: 0),
                                  Text("Tap to get details and directions")
                                ],
                              )),
                          // IconButton(
                          //   icon: Icon(Icons.shopping_basket_rounded),
                          // onPressed: null)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 110,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GridPlaceCard()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                          )]
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/BuMaherfort.jpg')
                                )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("BuMaher Fort", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  SizedBox(height: 0),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                    ],
                                  ),
                                  SizedBox(height: 0),
                                  Text("Tap to get details and directions")
                                ],
                              )),
                          // IconButton(
                          //   icon: Icon(Icons.shopping_basket_rounded),
                          // onPressed: null)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 110,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GridPlaceCard()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                          )]
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Nationalmuseum.jpg')
                                )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("National Museum", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  SizedBox(height: 0),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                    ],
                                  ),
                                  SizedBox(height: 0),
                                  Text("Tap to get details and directions")
                                ],
                              )),
                          // IconButton(
                          //   icon: Icon(Icons.shopping_basket_rounded),
                          // onPressed: null)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 110,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GridPlaceCard()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                          )]
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Nationalmuseum.jpg')
                                )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("National Museum", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  SizedBox(height: 0),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                    ],
                                  ),
                                  SizedBox(height: 0),
                                  Text("Tap to get details and directions")
                                ],
                              )),
                          // IconButton(
                          //   icon: Icon(Icons.shopping_basket_rounded),
                          // onPressed: null)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 110,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GridPlaceCard()));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 15,
                              spreadRadius: 1
                          )]
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(50),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Nationalmuseum.jpg')
                                )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("National Museum", style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700
                                  ),),
                                  SizedBox(height: 0),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                      Icon(Icons.star,color:Colors.orange, size: 14),
                                    ],
                                  ),
                                  SizedBox(height: 0),
                                  Text("Tap to get details and directions")
                                ],
                              )),
                          // IconButton(
                          //   icon: Icon(Icons.shopping_basket_rounded),
                          // onPressed: null)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
