import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var deviceSize=MediaQuery.of(context).size;

    return SizedBox(
      height: deviceSize.height * 0.15,
      child: (
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding:EdgeInsets.all(15),
                      child: Text('Stories',style: TextStyle(fontWeight: FontWeight.bold),)
                  ),
                  Padding(
                    padding:EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.play_arrow),
                        Text('Watch All', style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:10,
                    itemBuilder: (context,index)=> Stack(
                        alignment: Alignment.bottomRight,
                        children:[
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                shape: BoxShape.circle
                            ),
                            margin: EdgeInsets.symmetric(horizontal:8.0),
                          ),

                          index == 0 ? Positioned(
                            right: 10,
                            //top:35,
                            child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.add,size: 14, color: Colors.white,),
                            ),
                          )
                              :Container()
                        ]
                    )
                ),
              )
            ],

          )
      ),
    );
  }
}
