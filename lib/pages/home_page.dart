import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/pages/call_page.dart';
import 'package:flutter_codigo5_whatsapp/pages/chat_page.dart';
import 'package:flutter_codigo5_whatsapp/pages/status_pages.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              )),
        ],
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "CHAT",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xffB4CECB),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Text("5",
                    style: TextStyle(
                      color: Color(0xff065E52),
                    ),),
                  ),
                ],
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text("page 1")),
          ChatPage(),
          StatusPage(),
          CallPage(),

        ],
      ),
    );
  }
}
