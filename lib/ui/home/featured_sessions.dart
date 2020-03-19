import 'package:droidconke2020_flutter/config/palette.dart';
import 'package:flutter/material.dart';

class FeaturedSessions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text("Sessions", style: Theme.of(context).textTheme.subhead),
            Expanded(child: Container()),
            Text(
              "Veiw All",
              style: TextStyle(color: Palette.purple, fontSize: 12),
            ),
            SizedBox(width: 10),
            Chip(
              label: Text(
                "+45",
                style: TextStyle(color: Palette.purple[200], fontSize: 12),
              ),
              backgroundColor: Palette.purple[50],
            ),
          ],
        ),
        Container(
          height: 141,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              // maxCrossAxisExtent: .5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: .8,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: 9,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 78,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/images/other.png"),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                color: Palette.green,
                                size: 10,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "10:30",
                                style: TextStyle(fontSize: 8),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Icon(
                                Icons.access_time,
                                color: Palette.green,
                                size: 10,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Room 1",
                                style: TextStyle(fontSize: 8),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Text here",
                            maxLines: 2,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
