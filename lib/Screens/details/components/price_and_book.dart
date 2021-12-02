import 'package:flutter/material.dart';
import 'package:travel_app/components/common_button.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/responsive.dart';

class PriceAndBook extends StatelessWidget {
  const PriceAndBook({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Timing",
                style: TextStyle(
                fontSize: isTab(context) ? 24 : 18,
                fontWeight: FontWeight.w700,
                color: kPrimaryColor
            )),
            SizedBox(height: 0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("9:00am - 5:00pm"),
                Spacer(),
                CommonButton(
                  tapEvent: () {},
                )
              ],
            )
          ],
      );

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
             "\Opening Time",
            style: TextStyle(
              fontSize: isTab(context) ? 24 : 18,
              fontWeight: FontWeight.w700,
              color: kPrimaryColor
            )
        ),
        CommonButton(
          tapEvent: () {},
        )
      ],
    );
  }
}