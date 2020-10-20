import 'package:exp_nav/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardStar extends StatelessWidget {
  String number;
  Color color;
  CardStar({this.number = "0", this.color = Colors.black});

  Widget goToNextScreen(BuildContext _context, String number) {
    Navigator.of(_context).push(
      MaterialPageRoute(
        builder: (_) {
          return DetailsPage(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToNextScreen(context, number),
      // onTap: null,
      child: Container(
        width: 350,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50,
              // width: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: int.parse(number),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 32,
                    );
                  }),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.03,
            ),
            Text(
              "$number",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
