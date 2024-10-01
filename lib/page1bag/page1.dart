import 'package:flutter/material.dart';
import 'Product.dart';
import 'pageprodecut.dart';
class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final List<Map<String, String>> items = [
    {
      'image':'https://www.yasmina.com/tachyon/sites/5/2022/02/300515d94d1cb71b6d16c86bf2d1ce30351b3a10.jpg?resize=700%2C792&crop_strategy=smart&quality=60',
      'text': 'HARRODS',
    },
    {
      'image': 'https://www.yasmina.com/tachyon/sites/5/2022/02/affe4677f7255ea63aa9032d834382416760a55f.jpg?resize=700%2C792&crop_strategy=smart&quality=60',
      'text': 'HARRODS',
    },
{
  'image':'https://www.yasmina.com/tachyon/sites/5/2022/02/989705feaee782c36339193f123fa522c8fe367b.jpg?resize=700%2C792&crop_strategy=smart&quality=80',
   'text': 'HARRODS',
},
    {
      'image':'https://www.3roos.com/wp-content/uploads/2019/08/1-42.jpg',
      'text': 'GUCCL',
    },
    {
      'image':'https://www.charleskeith.co.uk/dw/image/v2/BCWJ_PRD/on/demandware.static/-/Sites-ck-products/default/dw5a44ad18/images/hi-res/2021-L3-CK2-30781483-01-1.jpg?sw=756&sh=1008',
      'text': 'CHARLES',
    },
    {
      'image':'https://ae01.alicdn.com/kf/Had522c6c9643417393869ebdc99273afQ.jpg_640x640q90.jpg',
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
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final Product= products[index];
                  return GestureDetector(
                    onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>pageprodecut(products: Product,)));
                    },
                    child: Column(
                      children: [

                       Expanded(
                             child: Image.network(
                                items[index]['image']!,
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                           ),


                        SizedBox(height:8),
                        Text(
                            items[index]['text']!,
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


