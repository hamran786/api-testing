import 'dart:convert';

import 'package:api_task/User_Details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart';

class Users_List extends StatelessWidget {
  Users_List({super.key});

  final formkey = GlobalKey<FormState>();

  Future<dynamic> request() async {
    String Url = "https://dummyapi.io/data/v1/user?limit=10";
    var responce = await get(Uri.parse(Url),
        headers: {'app-id': "61dbf9b1d7efe0f95bc1e1a6"});
    // print(responce.body);
    var msg = jsonDecode(responce.body)["data"];

    print(msg[0]["firstName"]);
    // print(msg["lastName"]);
    return msg;
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formkey,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: height * 0.06),
              Text("Helloo ",
            style: TextStyle(fontSize: 35, color: Color(0xFF363f93))),
              Text(
          "Welcome",
          style: TextStyle(fontSize: 35, color: Color(0xFF363f93)),
              ),
              SizedBox(
          height: height * 0.06,
              ),
              Expanded(
          child: FutureBuilder(
              future: request(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                            onTap: () => Navigator.push(context,
                                    MaterialPageRoute(builder: (cnxt) {
                                  return Details(id: snapshot.data[index]['id']);
                                })),
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  snapshot.data[index]['picture']),
                            ),
                            title: Text(
                              snapshot.data[index]["firstName"],
                            ),
                            subtitle: Text(
                              snapshot.data[index]["lastName"],
                            )),
                      );
                    },
                  );
                } else {
                  return Center(child: Text("Somethig Went Wrong"));
                }
              }),
              ),
            ]),
        ),
      ),
    );
  }
}
