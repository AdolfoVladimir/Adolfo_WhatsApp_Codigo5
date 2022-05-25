import 'package:flutter/material.dart';

import 'package:flutter_codigo5_whatsapp/models/status_model.dart';
import 'package:flutter_codigo5_whatsapp/pages/chat_detail_page.dart';

class ItemStatusWidget extends StatelessWidget {
  StatusModel statusModel;

  ItemStatusWidget({required this.statusModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatDetailPage(),
            ),
          );
        },
        leading: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xff02F25D),
                width: 2,
              )
          ),
          child: Container(

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              )
            ),
            child: CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 26,
              backgroundImage: NetworkImage(
                statusModel.avatarURL,
              ),
            ),
          ),
        ),
        title: Text(
          statusModel.username,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          statusModel.time,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 13.0,
              color: Colors.black.withOpacity(0.45)),
        ),

      ),
    );
  }
}
