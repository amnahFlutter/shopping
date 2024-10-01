import 'package:flutter/material.dart';
import 'package:im/page1bag/page1.dart';
import 'package:im/showjw/homejw.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length:4,
        child:Scaffold(
      appBar:AppBar(backgroundColor: Colors.white,
        elevation: 0,
        leading:IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart))
        ],
        
        bottom: PreferredSize(
          preferredSize:Size.fromHeight(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left:10),
              child: Text("Women",style: TextStyle(
                fontSize:25,
                fontWeight: FontWeight.w600
              ),),),
              TabBar(
                indicatorColor:Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black54,
                  unselectedLabelStyle: TextStyle(fontSize:15,fontWeight:FontWeight.w600),
                  labelStyle: TextStyle(fontSize:16,fontWeight: FontWeight.w600),
                  tabs:[
              Tab(child: Text("Hand bag"),),
              Tab(child: Text("Jewellery"),),
              Tab(child: Text("Footwear"),),
              Tab(child: Text("Dresses"),),
                    ]),
            ],
          ),
        ),),
    body: Container(
      child: TabBarView(
          children:[
        page1(),
            homejw(),
            Text("3"),
            Text("4")
      ]),
    ),



    ));
  }
}
