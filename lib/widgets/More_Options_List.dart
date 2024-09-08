import 'package:facebook_responsive_user_interface/models/user_model.dart';
import 'package:facebook_responsive_user_interface/widgets/Palette.dart';
import 'package:facebook_responsive_user_interface/widgets/User_Card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class More_Options_List extends StatelessWidget {

  final User current_User;
  final List<List> moreOptionsList =  [
    [ MdiIcons.shieldAccount, Colors.deepPurple, "COVID-19 Info Center"],
    [ MdiIcons.accountMultiple, Palette.facebookBlue, "Friends" ],
    [ MdiIcons.facebookMessenger, Palette.facebookBlue, "Messenger" ],
    [ MdiIcons.flag, Colors.orange, "Pages" ],
    [ MdiIcons.storefront, Palette.facebookBlue, "Marketplace" ],
    [ Icons.ondemand_video, Palette.facebookBlue, "Watch" ],
    [ MdiIcons.calendarStar, Colors.red, "Events" ],
  ];

  More_Options_List({super.key, required this.current_User});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 300.0),
      child: ListView.builder(
        itemBuilder: (context, index){
          if(index == 0)
            {
              return Padding(
                child: User_Card(user: current_User,),
                padding: const EdgeInsets.symmetric(vertical: 10.0,),
              );
            }

          final List options = moreOptionsList[index-1];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: _Options(icon: options[0], color: options[1], label: options[2], ),
          );
        },
        itemCount: 1 + moreOptionsList.length,
      ),
    );
  }
}

class _Options extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String label;

  const _Options({super.key, required this.icon, required this.color, required this.label,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print(label),
      child: Row(
        children: [
          Icon(icon, color: color, size: 38.0,),
          const SizedBox(width: 8.0,),
          Flexible(child: Text(label, style: const TextStyle( fontSize: 16.0, ), overflow: TextOverflow.ellipsis,), ),
        ],
      ),
    );
  }
}
