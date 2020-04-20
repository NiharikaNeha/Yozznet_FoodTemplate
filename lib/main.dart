import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Template'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          height: (MediaQuery.of(context).size.height)/2,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(0.1)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 280.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/food.jpeg'),
                    fit: BoxFit.fitHeight
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 15.0,),
                            Text(
                              'Sandwich',
                              style: TextStyle(
                                  fontSize: 20.0
                              ),
                            ),
                            Text(
                              'Rs 120',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20.0
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: (MediaQuery.of(context).size.width)-185.0,),
                        IconButton(
                          icon: Icon(Icons.add_circle_outline, color: Colors.black,),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '3.9',
                          style: TextStyle(
                            fontSize: 15.0
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 3),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,),
                        ),
                        SizedBox(width: 10.0,),
                        Container(
                          height: 20.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 2.0,),
                              Text(
                                '3 recommendations',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0
                                ),
                              ),
                            ],
                          )
                        ),
                        SizedBox(width: 5.0,),
                        Container(
                          height: 20.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5.0)
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 2.0,),
                              Text(
                                'restaurant recommended',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0
                                ),
                              ),
                            ],
                          )
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ),
      )
    );
  }
}
