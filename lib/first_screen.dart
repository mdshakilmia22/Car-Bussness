import 'package:car_bussiness/routing/garage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:nb_utils/nb_utils.dart';

import 'modal/modal.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[200],
        leading: Padding(
          padding: EdgeInsets.only(top: 2, left: 2),
          child: CircleAvatar(

            backgroundColor: Colors.orange,
            child: Image.asset('images/p.png'),
          ),
        ),
        actions: [
          Row(
            children: [
              Text('IDR',style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(
                width: 2,
              ),
              Text('17.7jt',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 22),)
            ],
          ),
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 7, top: 7),
            child: CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              child: Icon(Icons.add,color: Colors.white,),
            ),
          ),

        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  ImageSlideshow(
                    height: 220,
                    width: double.infinity,
                    autoPlayInterval: 3000,
                    isLoop: true,
                    indicatorBackgroundColor: Colors.black,
                    indicatorColor: Colors.pink,
                    onPageChanged: (value){
                      debugPrint('Page Changed: $value');
                    },
                    children: [
                      Image.asset('images/black.png',fit: BoxFit.cover,),
                      Image.asset('images/red car.png',fit: BoxFit.cover),
                      Image.asset('images/white car.jpg',fit: BoxFit.cover),
                      Image.asset('images/yellow.jpg',fit: BoxFit.cover)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('GTR',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                            SizedBox(
                            height: 2,
                            ),
                            Text('Nissan',style: TextStyle(fontSize: 22,color: Colors.grey),),
                          ],
                        ),
                       InkWell(
                         onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Garage(cardata: Car(),)));
                         },
                         child: Row(
                           children: [
                             Text('My Garage',style: TextStyle(fontSize: 18,color: Colors.blue),),
                             SizedBox(
                               height: 5,
                             ),
                             Icon(Icons.arrow_forward,color: Colors.blue,)
                           ],
                         ),
                       )
                      ],
                    ),
                  )
                ],
              ),
            ),

          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height*0.12,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Available Car',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                            ),),
                            Text('Long term and short term',style: TextStyle(color: Colors.white,fontSize: 16),)
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*0.10,
                          width: MediaQuery.of(context).size.width*0.150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: InkWell(
                             onTap: (){},
                              child: Icon(Icons.arrow_forward_ios,color: Colors.blue,)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('TOP DEALS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 25),),
                    Row(
                      children: [
                        Text('More',style: TextStyle(color: Colors.blue),),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_forward_ios,size: 20,color: Colors.blue,),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                HorizontalList(
                    spacing: 20,
                    itemCount: carlist.length,
                    itemBuilder: (context,index){
                      return Container(
                        height: MediaQuery.of(context).size.height/3,
                        width: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                     height: MediaQuery.of(context).size.height/7,
                                     decoration: BoxDecoration(
                                       image: DecorationImage(
                                         fit: BoxFit.fill,
                                         image:  AssetImage('${carlist[index].image}',
                                         ),
                                       )
                                     ),
                                   ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Color(0xffC0C7FF).withOpacity(0.5),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${carlist[index].day}',style: TextStyle(color: Colors.blue),),
                                    ),

                                  ),
                                ),
                            ]
                            ),
                             Padding(
                               padding: const EdgeInsets.all(20.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text('${carlist[index].name}',style: TextStyle(fontSize: 18),),
                                   SizedBox(
                                     height: 5,
                                   ),
                                   Text('${carlist[index].title}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                   Text('${carlist[index].subtitile}')
                                 ],
                               ),
                             )
                          ],
                        ),
                      );
                    }),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('TOP DEALS',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 25),),
                    Row(
                      children: [
                        Text('More',style: TextStyle(color: Colors.blue),),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.arrow_forward_ios,size: 20,color: Colors.blue,),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/4,

                  child: ListView.builder(

                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: carlist.length,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 28,right: 28,top: 20,bottom: 20),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: NetworkImage('${carlist[index].logo}'))
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Text('${carlist[index].logotitile}',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                                      SizedBox(height: 5,),
                                      Text('${carlist[index].logooffer}',style: TextStyle(fontSize: 10),),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );

                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
