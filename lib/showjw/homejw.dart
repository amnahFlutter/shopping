import 'package:flutter/material.dart';
import 'Productjw.dart';
import 'pageproduct.dart';


class homejw extends StatefulWidget {
  homejw({super.key});

  @override
  State<homejw> createState() => _homejwState();
}

class _homejwState extends State<homejw> {
  final List<Map<String, String>>jw= [
    {
      'image':'https://iraq.zendiamond.com/t2895-077-cttwins-diamond-ring-ar-zen-diamond-10875-28-B.jpg',
      'text': 'HARRODS',
    },
    {
      'image': 'https://iraq.zendiamond.com/t2624-030-cttwins-solitaire-diamond-ring-ar-zen-diamond-8594-26-B.jpg',
      'text': 'HARRODS',
    },
    {
      'image':'https://s.alicdn.com/@sc04/kf/H81e5233ab8184e25b45f967934037db5k.jpg_300x300.jpg',
      'text': 'HARRODS',
    },
    {
      'image':'https://m.media-amazon.com/images/I/41Wb4ckMhOL._AC_SY1000_.jpg',
      'text': 'GUCCL',
    },
    {
      'image':'https://jamajewels.com/cdn/shop/files/ClassicRound2.17CTLabDiamondRing.jpg?v=1722064259',
      'text': 'CHARLES',
    },
    {
      'image':'https://www.diamondsdubai.ae/wp-content/uploads/2018/01/B17842-1.jpg',
      'text': 'ZENCY',
    },




  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عدد الأعمدة
            crossAxisSpacing: 16, // المسافة الأفقية بين العناصر
            mainAxisSpacing: 20,
            childAspectRatio: 1.0,
          ),
          itemCount: jw.length,
          itemBuilder: (context, index) {
            final Productjw= productjw[index];
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>pageproduct(productjw:Productjw)));
              },
              child: Column(
                children: [

                  Expanded(
                    child: Image.network(
                      jw[index]['image']!,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),


                  SizedBox(height:8),
                  Text(
                    jw[index]['text']!,
                    style: TextStyle(fontSize: 16),
                  ),


                ],
              ),
            );
          },

        ),
      ),



    );
  }
}


