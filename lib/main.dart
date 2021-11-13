import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FifthDesign(),
    ),
  );
}

class FifthDesign extends StatefulWidget {
  @override
  _FifthDesignState createState() => _FifthDesignState();
}

class _FifthDesignState extends State<FifthDesign> {
  List<Color> colors = [Colors.red, Colors.yellow, Colors.grey, Colors.white];
  @override
  Color Circlecolor = Colors.blue;
  Color Circle1color = Colors.blue;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131517),

      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 50,
                ),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: Color(0xff0f1112),
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: Color(0xff0f1112),
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Circle1color == Colors.white
                              ? Circle1color = Colors.blue
                              : Circle1color = Colors.white;
                        });
                      },
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Circle1color,
                      ),
                    ),
                  ),
                ),
              ),
            ], //childremn
          ), //firstrow
          Stack(
            children: [
              Container(
                height: 390,
                width: 590,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: Container(
                  child: Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      color: Colors.transparent,
                      child: Image.asset('assets/watchbg.png', scale: 0.5),
                    ),
                  ),
                  margin: EdgeInsets.all(40),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Circlecolor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Circlecolor,
                        blurRadius: 18,
                        spreadRadius: 8,
                        offset: Offset(
                          1,
                          9,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Museum Watch',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 110,
              ),
              Container(
                height: 30,
                width: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Color(0xff5A5A5A),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1),
                      child: Text(
                        '5.0',
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.grade,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ), //second row
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Text(
                'Colors',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 30,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: ListView.separated(
                  padding: EdgeInsets.only(left: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 4,
                  separatorBuilder: (context, i) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          Circlecolor == colors[i]
                              ? Circlecolor = Colors.blue
                              : Circlecolor = colors[i];
                        });
                      },
                      child: Container(
                        height: 25,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: colors[i],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Specification',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              'Mens musuem watch, 40mm yellow gold finishing with stainless steel,black musuem dial with yellow gold covered skin',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  '\$87.46',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 120,
              ),
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  color: Color(0xffFBC873),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.shopping_cart,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Add to the Cart'),
                  ],
                ),
              ),
            ],
          ),
        ], //children
      ), //Column
    );
  }
}
