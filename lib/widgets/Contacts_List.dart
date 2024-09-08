import 'package:facebook_responsive_user_interface/models/user_model.dart';
import 'package:facebook_responsive_user_interface/widgets/User_Card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contacts_List extends StatelessWidget {
  final List<User> users;
  const Contacts_List({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 300.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Text("Contacts", style: TextStyle( fontWeight: FontWeight.w700, fontSize: 20.0, color: Colors.grey[700] ),)),
              Icon(Icons.search, color: Colors.grey[700],),
              const SizedBox(width: 8.0,),
              Icon(Icons.more_horiz, color: Colors.grey[700],),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index){
                  final User user = users[index];
                  return Padding(
                    child: User_Card(user: user,),
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                  );
                },
              itemCount: users.length,
              padding: const EdgeInsets.symmetric(vertical: 12.0),
            
            ),
          ),


        ],
      ),
    );
  }
}
