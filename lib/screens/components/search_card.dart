import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../search_screen.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
          image: AssetImage('images/colorful-3256055_640.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chat Search',
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),

          SizedBox(
            height: 30,
          ),
          TextFormField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.white)
            ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.white)
                )
            ),
            
               
              
            
          )
        ],
      ),
    );
  }
}