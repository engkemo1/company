
import 'package:flutter/material.dart';

import '../components/drawer_menu.dart';
import '../components/search_card.dart';
import 'chat_screen.dart';
class ListChats extends StatelessWidget {
  const ListChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(leading: IconButton(icon: Icon(Icons.arrow_back,), onPressed: () {             Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>DrawerMenu()));
      // },),),
      body: Column(
        children: [
          SizedBox(height: 20,),
          SearchCard(),
          Expanded(child:          ListView.builder(
      itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>ChatPage()));

              },
                leading: Image.asset('assets/images/photo2.jpg'),
                trailing: Container(
                  height: 15,width: 15,
                  decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
                  child: Center(child: Text(
                    '1',style: TextStyle(color: Colors.white,fontSize: 9),
                  ),),
                ),
                title: Text("Mahmoud"),subtitle:Text("Hello") ,);
          }),
    )

        ],
      ),
    );
  }
}
