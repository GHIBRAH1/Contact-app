// import 'dart:html';

// import 'dart:html';

import 'package:figma/add_todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'add_todo.dart';

class TodoHome extends StatelessWidget {
  const TodoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var child;
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: const Text(
            'My Todo',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(
                Icons.notifications,
                color: Colors.black54,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.3,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[300],
                    borderRadius: BorderRadius.circular(15)),
                child: const ListTile(
                  leading: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.done, color: Colors.white),
                  ),
                  title: Text(
                      'Complete Flutter UI App Challenge And Upload It On Github'),
                  trailing: Text('1hr 25m'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    'Remaining Tasks',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(width: 3),
                  Text(
                    '(24)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddTodo();
                  }));
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.2,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15)),
                  child: const ListTile(
                    leading: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.done, color: Colors.white),
                    ),
                    title: Text('Complete all the college assignments'),
                    trailing: Text('May 16'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddTodo();
                  }));
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.2,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15)),
                  child: const ListTile(
                    leading: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.done, color: Colors.white),
                    ),
                    title: Text('Buy watch for dad on fathers day'),
                    trailing: Text('May 17'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddTodo();
                  }));
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.2,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15)),
                  child: const ListTile(
                    leading: Icon(Icons.library_add),
                    title: Text(
                        'Complete the case study and send it to the professor'),
                    trailing: Text('May 17'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddTodo();
                  }));
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.2,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15)),
                  child: const ListTile(
                    leading: Icon(Icons.alarm),
                    title: Text('My Best Friends Birthday Party'),
                    trailing: Text('May 20'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AddTodo();
                  }));
                },
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.2,
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.done, color: Colors.white),
                    ),
                    title: const Text('Help Sister With Her Calculus Homework'),
                    trailing: FloatingActionButton(
                      onPressed: () {
                        print('click once'); 
                      },
                      child: const Icon(
                        Icons.add,
                      ),
                      backgroundColor: Colors.blue,
                      splashColor: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
