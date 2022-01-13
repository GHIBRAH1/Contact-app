import 'package:figma/contacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  final Contacts contacts;
  const HomePage({Key? key, required this.contacts}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Contacts c = widget.contacts;
    return Scaffold(
    drawer: Drawer(

    ),
        backgroundColor: Colors.grey[300],
        
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          
          title: 
          
          const Text(
            'Contacts',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: ListView(children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.55,
            color: Colors.white,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(c.image),
                  radius: 60,
                ),
              const  SizedBox(
                  height: 10,
                ),
                Text(
                  c.name,
                  style:const TextStyle(fontWeight: FontWeight.bold),
                ),
               const  SizedBox(
                  height: 10,
                ),
                Text(c.location)
              ],
            ),
          ),
          Column(
            children: [
              ListTile(
                  title: const Text(
                    'Mobile',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(c.number),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child:const Icon(Icons.chat)),
                    const  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      Container(
                          height: 35,
                          width: 35,
                          decoration:const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child:const Icon(Icons.call))
                    ],
                  )),
              ListTile(
                  title:const Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(c.email),
                  trailing:const Icon(
                    Icons.email,
                  )),
              const ListTile(
                title: Text(
                  'Group',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Uni friends'),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.width * 0.10,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Account Linked',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const ListTile(
              title: Text(
                'Telegram',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: CircleAvatar(
                backgroundImage: AssetImage('assets/what.png'),
              )
              ),

          const ListTile(
            title: Text(
              'Whatsapp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              backgroundImage: AssetImage('assets/wh.png'),
            ),
          ),

          Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.width * 0.10,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'More Options',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              )
              ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Share Contact',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'QR code',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          )
        ]));
  }
}
