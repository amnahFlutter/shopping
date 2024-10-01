import 'package:flutter/material.dart';
class buynow extends StatefulWidget {
  const buynow({super.key});

  @override
  State<buynow> createState() => _buynowState();
}

class _buynowState extends State<buynow> {
  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){},
            child: Container(
              width: 70,
              height:60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  width: 2,
                  color: Colors.white
                ),
              color:Colors.black54,
              ),
              child:Icon(Icons.add_shopping_cart,color: Colors.white,size: 30,),
            ),
          ),

          Material(
             elevation: 5,
               color: Colors.white,
               borderRadius: BorderRadius.circular(10),
             child:MaterialButton(onPressed: (){
               },
            minWidth: 300,
              height: 60,
              child: Text("Buy Now",style: TextStyle(
           color: Colors.black,
              fontSize: 25
    ),),
    )
          )
        ],
      );


  }
}
