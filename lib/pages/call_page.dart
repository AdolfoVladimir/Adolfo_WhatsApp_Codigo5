import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_call,
        ),
        onPressed: () {},
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black12,
                radius: 26,
                backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                ),
              ),
              title: Text(
                "Daniela Farfán Lopez",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.call_made_rounded,
                    size: 15.0,
                    color: Color(
                      0xff01C851,
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    "Ayer 11:02 pm",
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black.withOpacity(0.45),
                    ),
                  ),
                ],
              ),
              trailing: Icon(Icons.call,color: Color(0xff01C851,),),
            ),
          );
        },
      ),
    );
  }
}
