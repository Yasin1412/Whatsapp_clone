import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/call_model.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: callData.length,
            itemBuilder: (context, i) => Column(
                  children: [
                    Divider(
                      height: 10.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage(
                            callData[i].avatar ?? 'images/no_img2.jpg'),
                      ),
                      title: Text(callData[i].name,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Row(
                        children: [
                          Container(
                            child: callData[i].callType,
                          ),
                          Text(
                            callData[i].time,
                            style:
                                TextStyle(color: Colors.grey, fontSize: 15.0),
                          ),
                        ],
                      ),
                      trailing: Icon(
                        Icons.call,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                      ),
                      onTap: () {
                        print("Call Detail Open");
                      },
                    )
                  ],
                )));
  }
}
