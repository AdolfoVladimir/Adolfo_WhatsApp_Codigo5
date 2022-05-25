import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/data/data_dummy.dart';
import 'package:flutter_codigo5_whatsapp/widget/item_chat_widget.dart';
import 'package:flutter_codigo5_whatsapp/widget/item_status_widget.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              mini: true,
              backgroundColor: Color(0xffDAE2E2),
              child: const Icon(
                Icons.edit,
                size: 30,
                color: Color(0xff436465),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              child: const Icon(
                Icons.camera_alt_rounded,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8.0),
              child: ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 26,
                      backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/5733417/pexels-photo-5733417.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        child: Icon(
                          Icons.add_circle,
                          color: Color(0xff065E52),
                        ),

                      ),
                    ),
                  ],
                ),
                title: Text(
                  "Mi estado",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      "Añade una actualización",
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black.withOpacity(0.45),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Recientes",
                style: TextStyle(
                  color: Color(0xff065E52),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    return ItemStatusWidget(
                      statusModel: statusList[index],
                    );
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Vistos",
                style: TextStyle(
                  color: Color(0xff065E52),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: statusList.length - 3,
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    return ItemStatusWidget(
                      statusModel: statusList[index + 3],
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
