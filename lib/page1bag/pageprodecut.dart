import 'package:flutter/material.dart';


import 'Product.dart';
import 'buynow.dart';
import 'counterpage.dart';

class pageprodecut extends StatelessWidget {
  final Product products;

  pageprodecut({required this.products});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart))
        ],
      ),
      body:Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top:386),
                height: 482,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )
                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                   Text(products.title,style: TextStyle(
                        fontSize: 30,
                      ),),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child:Image.network(products.image,height:300))
                      ],
                    ),
                    SizedBox(height:60,),
                    Text("price",style: TextStyle(color: Colors.white,
                    fontSize:26,
                    fontWeight:FontWeight.w500),),
                    Text("\$${products.price}",style: TextStyle(
                      color: Colors.white,
                      fontSize:38
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Color",style: TextStyle(
                              color: Colors.white,
                              fontSize:25
                            ),),
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                myShape(Colors.brown, Colors.white),
                             SizedBox(width: 10,),
                                myShape(Colors.blue, Colors.white),
                                SizedBox(width: 10,),
                                myShape(Colors.pinkAccent, Colors.white)
                              ],
                            ),
                          ],
                        ),
                        Column(
                           children: [
                         Text("Size",style: TextStyle(
                         color: Colors.white,
                          fontSize: 20
                             ),),
                           SizedBox(height:0,),
                           Text("${products.size}cm",style: TextStyle(
                            color: Colors.white,
                                 fontSize: 20
                               ),),
                                ],
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text(products.description,style: TextStyle(
                      color: Colors.white,
                      fontSize:17
                    ),),
                    SizedBox(height: 20,),
                   CounterWidget(),
                    SizedBox(height: 30,),
                    buynow(),



                      ],
                    ),

                ),

            ],
          )
        ],
      ),
    );
  }
  Container myShape(Color myColor,Color mybord) {
    return Container(

      height: 24,
      width:24,
      decoration: BoxDecoration(
        color:myColor,
        shape: BoxShape.circle,
        border: Border.all(
          color: mybord,

        ),
      ),
    );
  }
  }



