import 'package:figma/todo_home.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';


class AddTodo extends StatelessWidget {
  const AddTodo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maincolor = Color.fromRGBO(30,37,105,1);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: maincolor,
        title: const Text(
          "Create To-do",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: GestureDetector(
           onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const TodoHome();
                }));
              },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        titleSpacing: 0.0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical:20),
        children: [
          TextFormField(
            cursorColor: maincolor,
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: const TextStyle(
                  color: Colors.black
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: maincolor)
                )
              )
          ),

           TextFormField(
             maxLines: 8,
             cursorColor: maincolor,
              decoration: InputDecoration(
                labelText: 'Description',
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: maincolor)
                )
              )
            ),

            Padding(padding: EdgeInsets.symmetric(vertical:15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Expanded(
                    child: TextFormField(
                        cursorColor: maincolor,
                        decoration: InputDecoration(
                          labelText: 'Date',
                          labelStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: maincolor)
                          )
                        )
                      )
                    ),

                  Padding(padding: EdgeInsets.symmetric(horizontal:50)),

                  Expanded(
                    child: TextFormField(
                      cursorColor: maincolor,
                      decoration: InputDecoration(
                        labelText: 'Time',
                        labelStyle: const TextStyle(
                          color: Colors.black
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: maincolor)
                        )
                      )
                    )
                  )
                ],
            ),

            Padding(padding: EdgeInsets.symmetric(vertical:20)),

            SizedBox(
              height:60,
              child: TextButton(onPressed: (){}, 
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(maincolor),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ))
                ),
              child: Text("Create",style: TextStyle(
                color: Colors.white, 
                fontWeight:FontWeight.bold,
                fontSize: 25
              ),)
              ),
            )
        ],
      ),
    );
  }
}
