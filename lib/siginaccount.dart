import 'package:flutter/material.dart';
import 'package:im/home.dart';
class siginaccount extends StatefulWidget {
  const siginaccount({super.key});

  @override
  State<siginaccount> createState() => _siginaccountState();
}

class _siginaccountState extends State<siginaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: Icon(Icons.keyboard_backspace,size: 30,),

      ),
      
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color:Colors.white,
                  width: 450,
                  height: 300,
                ),
                Padding(
                  padding:EdgeInsets.only(top:100),
                  child: Container(
                    width: 450,
                    height: 769,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(20),
                      topRight:Radius.circular(20)),
                      color: Colors.black
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Padding(
                   padding: EdgeInsets.only(left:20,top: 20),
                   child: Text("Sign in",style: TextStyle(
                     fontSize:30,
                     fontWeight: FontWeight.w600
                   ),),
                 ),
                     Padding(
                       padding: const EdgeInsets.only(top:80,
                       left: 20),
                       child: Text("Welcom Back",style: TextStyle(
                         fontSize: 40,
                         fontWeight: FontWeight.w600,
                         color: Colors.white
                       ),),
                     ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top:20,left:25,bottom: 10),
                        child: Text("Username or email",style: TextStyle(
                          color:Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w400
                        ),),
                      ),

                        Padding(
                          padding:  EdgeInsets.only(left:20,right: 20,
                          top:15),
                          child: TextField(
                            onChanged:(value){
                            },
                            textAlign: TextAlign.start,
                            decoration:InputDecoration(
                              hintText: "Enter your  username or Email",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 20,
                                horizontal: 20
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              ),
                              enabledBorder:  OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,
                                    width: 2),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder:  OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white,
                                    width: 3),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                          ),
                        ),
                      Padding(
                        padding: EdgeInsets.only(top:40,left:25,bottom: 10),
                        child: Text("Passward",style: TextStyle(
                            color:Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w400
                        ),),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left:20,right: 20,
                            top:15),
                        child: TextField(
                          onChanged:(value){
                          },
                          textAlign: TextAlign.start,
                          decoration:InputDecoration(
                            hintText: "Enter your  Password",
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20,
                              horizontal:20

                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            enabledBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white,
                                  width: 2),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            focusedBorder:  OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white,
                                  width: 3),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(builder:(context)=>home()));
                        },
                        child: Padding(
                          padding:  EdgeInsets.only(left:20,right: 15,top: 30),
                          child: Container(
                            width: 410,
                            height: 70,
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white
                            ),
                           child:Center(
                             child: Text("Sign in",style: TextStyle(
                               fontSize: 40
                             ),),
                           ),
                          ),
                        ),
                      )

                    ],
                  )
                ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
