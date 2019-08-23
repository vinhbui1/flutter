import 'package:flutter/material.dart';
class Index extends StatelessWidget {
   Widget textDetail = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  );

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        Icon(Icons.star),
        Text('41')
      ],
    ),
  );


  @override
  Widget build(BuildContext context) {
    
    Column builtColumnSection(Color color, IconData icon, String label) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: Text(label,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400, color: color)),
          )
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;
    Widget builtColumn = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          builtColumnSection(color, Icons.call, 'CALL'),
          builtColumnSection(color, Icons.near_me, 'ROUTE'),
          builtColumnSection(color, Icons.share, 'SHARE'),
        ],
      ),
    );
    return ListView(
          children: [
            Image.asset(
              'assets/aa.jpg',
              fit: BoxFit.cover,
            ),
            titleSection,
            builtColumn,
            textDetail
          ],
        );
  }
}