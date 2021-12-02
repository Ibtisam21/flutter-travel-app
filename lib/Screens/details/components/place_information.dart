import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Models/Place.dart';
import 'package:travel_app/Screens/details/components/Calender.dart';
import 'package:travel_app/Screens/details/components/days_chooser.dart';
import 'package:travel_app/Screens/details/components/location.dart';
import 'package:travel_app/Screens/details/components/price_and_book.dart';
import 'package:travel_app/Screens/details/components/rating.dart';
import 'package:travel_app/components/common_button.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/responsive.dart';

class PlaceInformation extends StatelessWidget {
  const PlaceInformation({
    Key key,
    @required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DelayedDisplay(
      delay: Duration(milliseconds: 100),
      fadingDuration: Duration(milliseconds: 300),
      slidingBeginOffset: const Offset(0, 1),

      child: Container(
        height: size.height * 0.7,
        width: double.infinity,
        margin: EdgeInsets.only(top: size.height * 0.35),
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          color: Colors.white
        ),

        child: SingleChildScrollView(
          child: SafeArea(
            top: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: TextStyle(
                    fontSize: isTab(context) ? 32 : 24,
                    fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 5),

                Location(place: place),

                SizedBox(height: 10),

                Row(
                  children: [
                    Rating(place: place),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CalenderTime()),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: kPrimaryColor
                        ),
                        // width: isTab(context) ? 300 : 150,
                        // height: isTab(context) ? 70 : 50,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          child: Text(
                            'Book Slot',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: isTab(context) ? 25 : 16
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //SizedBox(height: 25),

                //DaysChooser(),

                SizedBox(height: 10),

                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: isTab(context) ? 28 : 20,
                    fontWeight: FontWeight.w700
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  place.description,
                  style: TextStyle(
                    fontSize: isTab(context) ? 20 : 16,
                  ),
                ),

                SizedBox(height: 50),

                PriceAndBook()
              ],
            ),
          ),
        ),
      ),
    );
  }
}