import 'package:figma/contacts.dart';
import 'package:figma/home_page.dart';
import 'package:figma/list_tile_card.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'My Contacts',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/incar.jpg'),
            ),
          )
        ],
      ),
      body: ListView(padding: EdgeInsets.all(10), children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "search by name or number",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                border: InputBorder.none),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Recents',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(contactlist.length, (index) {
              return ListTileCard(
                mycontacts: contactlist[index],
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  HomePage(
                                contacts: contactlist[index],
                              )));
                },
              );
            }),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Contacts',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'A',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.end,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(contactlistA.length, (index) {
              return ListTileCard(
                mycontacts: contactlistA[index],
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                                contacts: contactlistA[index],
                              )));
                },
              );
            }),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'B',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.end,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(contactlistB.length, (index) {
              return ListTileCard(
                mycontacts: contactlistB[index],
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                                contacts: contactlistB[index],
                              )));
                },
              );
            }
            ),
          ),
        ),
      ]
       ),
    );
  }
}
