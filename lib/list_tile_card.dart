import 'package:figma/contacts.dart';
import 'package:flutter/material.dart';

class ListTileCard extends StatelessWidget {
  final Contacts mycontacts;
  final Function ontap;
const ListTileCard({Key? key,
    required this.mycontacts,
    required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap();
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(mycontacts.image),
          ),
          title: Text(
            mycontacts.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(mycontacts.number),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
