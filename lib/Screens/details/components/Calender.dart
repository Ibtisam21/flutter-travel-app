import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:travel_app/Screens/details/components/bookedevent.dart';
import 'package:travel_app/Screens/home/home.dart';

import '../../../constants.dart';
import '../../../main.dart';
import '../../../responsive.dart';
import 'animate.dart';

class CalenderTime extends StatefulWidget {
  const CalenderTime({Key key}) : super(key: key);

  @override
  _CalenderTimeState createState() => _CalenderTimeState();
}

class _CalenderTimeState extends State<CalenderTime> {

  int _selectedDay = 2;
  // int _selectedRepeat = 0;
  String _selectedHour = '13:30';
  // List<int> _selectedExteraCleaning = [];

  ItemScrollController _scrollController = ItemScrollController();

  final List<dynamic> _days = [
    [1, 'Fri'],
    [2, 'Sat'],
    [3, 'Sun'],
    [4, 'Mon'],
    [5, 'Tue'],
    [6, 'Wed'],
    [7, 'Thu'],
    [8, 'Fri'],
    [9, 'Sat'],
    [10, 'Sun'],
    [11, 'Mon'],
    [12, 'Tue'],
    [13, 'Wed'],
    [14, 'Thu'],
    [15, 'Fri'],
    [16, 'Sat'],
    [17, 'Sun'],
    [18, 'Mon'],
    [19, 'Tue'],
    [20, 'Wed'],
    [21, 'Thu'],
    [22, 'Fri'],
    [23, 'Sat'],
    [24, 'Sun'],
    [25, 'Mon'],
    [26, 'Tue'],
    [27, 'Wed'],
    [28, 'Thu'],
    [29, 'Fri'],
    [30, 'Sat'],
    [31, 'Sun']
  ];

  final List<String> _hours = <String>[
    '01:00',
    '01:30',
    '02:00',
    '02:30',
    '03:00',
    '03:30',
    '04:00',
    '04:30',
    '05:00',
    '05:30',
    '06:00',
    '06:30',
    '07:00',
    '07:30',
    '08:00',
    '08:30',
    '09:00',
    '09:30',
    '10:00',
    '10:30',
    '11:00',
    '11:30',
    '12:00',
    '12:30',
    '13:00',
    '13:30',
    '14:00',
    '14:30',
    '15:00',
    '15:30',
    '16:00',
    '16:30',
    '17:00',
    '17:30',
    '18:00',
    '18:30',
    '19:00',
    '19:30',
    '20:00',
    '20:30',
    '21:00',
    '21:30',
    '22:00',
    '22:30',
    '23:00',
    '23:30',
  ];
  //
  // final List<String> _repeat = [
  //   'No repeat',
  //   'Every day',
  //   'Every week',
  //   'Every month'
  // ];
  //
  // final List<dynamic> _exteraCleaning = [
  //   ['Washing', 'https://img.icons8.com/office/2x/washing-machine.png', '10'],
  //   ['Fridge', 'https://img.icons8.com/cotton/2x/fridge.png', '8'],
  //   ['Oven', 'https://img.icons8.com/external-becris-lineal-color-becris/2x/external-oven-kitchen-cooking-becris-lineal-color-becris.png', '8'],
  //   ['Vehicle', 'https://img.icons8.com/external-vitaliy-gorbachev-blue-vitaly-gorbachev/2x/external-bycicle-carnival-vitaliy-gorbachev-blue-vitaly-gorbachev.png', '20'],
  //   ['Windows', 'https://img.icons8.com/external-kiranshastry-lineal-color-kiranshastry/2x/external-window-interiors-kiranshastry-lineal-color-kiranshastry-1.png', '20'],
  // ];

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      _scrollController.scrollTo(
        index: 24,
        duration: Duration(seconds: 3),
        curve: Curves.easeInOut,
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Select Date and Time", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Colors.black,)),
      ),
        backgroundColor: Colors.white,

        // body: NestedScrollView(
          // headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          //   return <Widget>[
          //     // SliverToBoxAdapter(
          //     //     child: FadeAnimation(1, Padding(
          //     //       padding: EdgeInsets.only(top: 120.0, right: 20.0, left: 20.0),
          //     //       child: Text(
          //     //         'Select Date \nand Time',
          //     //         style: TextStyle(
          //     //           fontSize: 35,
          //     //           color: Colors.grey.shade900,
          //     //           fontWeight: FontWeight.bold,
          //     //         ),
          //     //       ),
          //     //     ),
          //     //     ))
          //   ];
          // },
          body: SafeArea(
              child: Stack(
                children: [
                  Padding(
                   padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       FadeAnimation(1, Row(
                        children: [
                          Text("December 2021"),
                          Spacer(),
                          IconButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {},
                            icon: Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.grey.shade700,),
                          )
                      ],
                      )),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(width: 1.5, color: Colors.grey.shade200),
                      ),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _days.length,
                          itemBuilder: (BuildContext context, int index) {
                            return FadeAnimation((1 + index) / 6, GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedDay = _days[index][0];
                                });
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                width: 62,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _selectedDay == _days[index][0] ? Colors.blue.shade100.withOpacity(0.5) : Colors.blue.withOpacity(0),
                                  border: Border.all(
                                    color: _selectedDay == _days[index][0] ? Colors.blue : Colors.white.withOpacity(0),
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(_days[index][0].toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                    SizedBox(height: 10,),
                                    Text(_days[index][1], style: TextStyle(fontSize: 16),),
                                  ],
                                ),
                              ),
                            ));
                          }
                      ),
                    ),
                    SizedBox(height: 10,),
                    FadeAnimation(1.2, Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(width: 1.5, color: Colors.grey.shade200),
                      ),
                      child: ScrollablePositionedList.builder(
                          itemScrollController: _scrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: _hours.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedHour = _hours[index];
                                });
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _selectedHour == _hours[index] ? Colors.orange.shade100.withOpacity(0.5) : Colors.orange.withOpacity(0),
                                  border: Border.all(
                                    color: _selectedHour == _hours[index] ? Colors.orange : Colors.white.withOpacity(0),
                                    width: 1.5,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(_hours[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                                  ],
                                ),
                              ),
                            );
                          }
                      ),
                    )),
                    SizedBox(height: 40,),
                    FadeAnimation(1.2, Text("Terms and Conditions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
                    Divider(
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: Colors.black,
                    ),
                    SizedBox(height: 10,),
                    Container(
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1.5, color: Colors.grey.shade200),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10),
                              FadeAnimation(1.2, Text("* Everyone should be vaccinated and show their vaccination on arrival")),
                              SizedBox(height: 5,),
                              FadeAnimation(1.2, Text("* You should reach on Time")),
                              SizedBox(height: 5,),
                              FadeAnimation(1.2, Text("* Food is not allowed")),
                              SizedBox(height: 5,),
                            ],
                          ),
                        ),
                        // child: ListView.builder(
                        //   scrollDirection: Axis.horizontal,
                        //   itemCount: _repeat.length,
                        //   itemBuilder: (context, index) {
                        //     return GestureDetector(
                        //       onTap: () {
                        //         setState(() {
                        //           _selectedRepeat = index;
                        //         });
                        //       },
                        //       child: FadeAnimation((1.2 + index) / 4, Container(
                        //         padding: EdgeInsets.symmetric(horizontal: 20),
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(15),
                        //           color: _selectedRepeat == index ? Colors.blue.shade400 : Colors.grey.shade100,
                        //         ),
                        //         margin: EdgeInsets.only(right: 20),
                        //         child: Center(child: Text(_repeat[index],
                        //           style: TextStyle(fontSize: 18, color: _selectedRepeat == index ? Colors.white : Colors.grey.shade800),)
                        //         ),
                        //       )),
                        //     );
                        //   },
                        // )
                    ),
                    // SizedBox(height: 40,),
                    // FadeAnimation(1.4, Text("Additional Service", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
                    // SizedBox(height: 10,),
                    // Container(
                    //     height: 120,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: Colors.white,
                    //     ),
                    //     child: ListView.builder(
                    //       scrollDirection: Axis.horizontal,
                    //       itemCount: _exteraCleaning.length,
                    //       itemBuilder: (context, index) {
                    //         return GestureDetector(
                    //             onTap: () {
                    //               setState(() {
                    //                 if (_selectedExteraCleaning.contains(index)) {
                    //                   _selectedExteraCleaning.remove(index);
                    //                 } else {
                    //                   _selectedExteraCleaning.add(index);
                    //                 }
                    //               });
                    //             },
                    //             child: FadeAnimation((1.4 + index) / 4, Container(
                    //                 width: 110,
                    //                 decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(15),
                    //                   color: _selectedExteraCleaning.contains(index) ? Colors.blue.shade400 : Colors.transparent,
                    //                 ),
                    //                 margin: EdgeInsets.only(right: 20),
                    //                 child: Column(
                    //                   mainAxisAlignment: MainAxisAlignment.center,
                    //                   crossAxisAlignment: CrossAxisAlignment.center,
                    //                   children: [
                    //                     Image.network(_exteraCleaning[index][1], height: 40,),
                    //                     SizedBox(height: 10,),
                    //                     Text(_exteraCleaning[index][0], style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: _selectedExteraCleaning.contains(index) ? Colors.white : Colors.grey.shade800),),
                    //                     SizedBox(height: 5,),
                    //                     Text("+${_exteraCleaning[index][2]}\$", style: TextStyle(color: Colors.black),)
                    //                   ],
                    //                 )
                    //             ))
                    //         );
                    //       },
                    //     )
                    // ),
                  ],
            ),
          ),
                  Align(
                    alignment: Alignment.bottomCenter,
                      child: BottomBtn(context)),
                ],
              ),
    )
        // )
    );
  }

  GestureDetector BottomBtn(BuildContext context) {
    return GestureDetector(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EventBooked(),),);},
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: kPrimaryColor
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Buy Ticket",
                          //place.price=="Free"? "Free":"Book Slot",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: isTab(context) ? 25 : 16
                          ),
                        ),
                        Spacer(),
                        Text(
                          "3.000 BD",
                          //place.price=="Free"? "Free":"Book Slot",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: isTab(context) ? 25 : 16
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }
}

