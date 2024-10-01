import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 25,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    if (_counter > 0) {
                      _counter--;  // Decrease the counter
                    }
                  });
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  padding: EdgeInsets.zero,
                  alignment: Alignment.center,
                ),
                child: Icon(Icons.remove, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 40,
              child: Center(
                child: Text(
                  '$_counter',
                  style: TextStyle(color: Colors.white,
                    fontSize:25
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 40,
              height: 25,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    _counter++;  // Increase the counter
                  });
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Colors.white,
                    width: 2,
                  ),
                  padding: EdgeInsets.zero, // إزالة الـ padding الافتراضي
                  alignment: Alignment.center, // توسيط المحتوى
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: (){},
          child: Icon(Icons.favorite,color: Colors.red,
            size: 35,),
        ),

      ],
    );
  }
}