import 'package:flutter/material.dart';
import './InstaStories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return(
      ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index)=>

          index==0 ? InstaStories()
              : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:EdgeInsets.fromLTRB(16, 16, 10, 16),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('unique_euqinu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Icon(
                      Icons.more_vert
                    )
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                  child: Image.network('https://images.unsplash.com/photo-1605826891981-644e2973d569?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(
                     children: [
                       Icon(
                           FontAwesomeIcons.heart
                       ),
                       SizedBox(
                         width: 16,
                       ),
                       Icon(
                           FontAwesomeIcons.comment
                       ),
                       SizedBox(
                         width: 16,
                       ),
                       Icon(
                           FontAwesomeIcons.paperPlane
                       ),

                     ],
                   ),
                   Icon(
                     FontAwesomeIcons.bookmark
                   ),

                 ],

                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:16.0),
                child: Text(
                    'Liked by euqinu and 1000 others',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Add a comment ..."
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '1 day ago ',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),

              )
            ],

          )


      )
    );


  }
}