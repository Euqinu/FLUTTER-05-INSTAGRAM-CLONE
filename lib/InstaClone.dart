import 'package:flutter/material.dart';
import 'package:instagram_clone/InstaBody.dart';

class InstaClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8faf8),
        title: SizedBox(height: 35.0,child: Image.asset('assets/images/insta_logo.png')),
        elevation: 1.0,
        centerTitle: true,
        leading: Icon(Icons.camera_alt),
        actions: [
          Icon(Icons.send),

        ],
      ),
      body: InstaBody(),
      bottomNavigationBar: Container(
        height: 50.0,
        child: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.add_box
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.perm_contact_calendar
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

