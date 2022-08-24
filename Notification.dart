import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                  child:
                const Text(
                    "Notification",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.bold,
                    letterSpacing: 1

                  ),
                )
              ),
              const ListTile(
                leading: ImageIcon(
                  AssetImage("assets/Initials1.png"),
                ),
                title: Text("Joy Arnold left 6 comments on Your Post"),
                subtitle: Text("Yesterday at 11:42 PM"),
              ),
              const Divider(),
              const ListTile(
                leading: ImageIcon(
                  AssetImage("assets/Initials2.png"),
                ),
                title: Text("Dennis Nedry commented on Isla Nublar SOC2 compliance report “ leaves are an integral part of the stem system. They are attached by a continuous vascular system to the rest of the plant so that free exchange of nutrients.”"),
                subtitle: Text(
                    "Wednesday at 11:15 AM"

                ),

                isThreeLine: true,
              ),




            ],
          ),
      ),
    );
  }
}

