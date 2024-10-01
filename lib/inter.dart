import 'package:flutter/material.dart';
import 'package:im/siginaccount.dart';
import 'package:im/singn.dart';
class inter extends StatelessWidget {
  const inter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding:  EdgeInsets.only(top:150),
              child: Center(
                child: Image(image: AssetImage("asset/sh.jpg")),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:20,left: 10),
              child: Text("Welcome",style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w500
              ),),
            ),
            Padding(
              padding: EdgeInsets.only( top:20,left: 10),
              child: Text(" Let go to shopping ladies",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                ),),
            ),



            singn(),



            Padding(
              padding:  EdgeInsets.only(right:20,left:20,top:10),
              child: Material(

                color:Colors.black,
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>siginaccount()));
                },
                  minWidth:430,
                  height:40,
                  child: Row(
                    children: [

                      Icon(Icons.person,
                        color:Colors.white,
                        size: 30,
                      ),
                      SizedBox(width: 40,),
                      Text("Create an account",style: TextStyle(
                          color: Colors.white,
                          fontSize: 26
                      ),),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),

    );
  }
}
