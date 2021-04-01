import 'package:CXFlutter/wechat/message/CXMessageCell.dart';
import 'package:CXFlutter/wechat/public/CXMessageModel.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  MessageScreen({Key key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<CXMessageModel> _messageList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getMessageList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(a, r, g, b),
        title: Text('消息'),
      ),
      body: ListView.separated(
        itemCount: _messageList.length,
        itemBuilder: (context, index) {
          var model = _messageList[index];
          return CXMessageCell(model);
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.green,
            height: 1,
            indent: 100,
          );
        },
      ),
    );
  }

  getMessageList() {
    setState(() {
      _messageList = CXMessageModel.resolveDataFromJsonString("""
      {
            "list": [
               {
                "messageId": "1001",
                "message": "2017年全国兰展：400图文件夹2017年全国兰展：400图文件夹",
                "messageUserAvatar": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1766066825,2906599954&fm=26&gp=0.jpg",
                "messageUserName": "花痴党",
                "messageTime": "2021-04-01"
              },
              {
                "messageId": "1002",
                "message": "2019年杭州兰展",
                "messageUserAvatar": "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2162071428,2190895476&fm=26&gp=0.jpg",
                "messageUserName": "花痴党",
                "messageTime": "2021-04-01"
              },
              {
                "messageId": "1003",
                "message": "云裳2020北京兰展",
                "messageUserAvatar": "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=878408286,2859261148&fm=26&gp=0.jpg",
                "messageUserName": "花痴党",
                "messageTime": "2021-04-01"
              },
              {
                "messageId": "1004",
                "message": "假酸浆",
                "messageUserAvatar": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1821200571,31466678&fm=26&gp=0.jpg",
                "messageUserName": "一花一世界",
                "messageTime": "2021-04-01"
              },
              {
                "messageId": "1005",
                "message": "紫花风铃木",
                "messageUserAvatar": "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3432023094,105020052&fm=26&gp=0.jpg",
                "messageUserName": "一花一世界",
                "messageTime": "2021-04-01"
              },
              {
                "messageId": "1006",
                "messageUserAvatar": "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3501583875,315743878&fm=26&gp=0.jpg",
                "message": "白雪木",
                "messageUserName": "花伴侣说",
                "messageTime": "2021-04-01"
              }
            ]
          }
    """);
    });
  }

  // getMessageList() {
  //   setState(() {
  //     _messageList = CXMessageModel.resolveDataFromJsonString("""
  //     {
  //       "list":[
  //         {
  //           "messageId": "1001",
  //           "message": "2017年全国兰展：400图文件夹2017年全国兰展：400图文件夹",
  //           "messageUserAvatar": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1766066825,2906599954&fm=26&gp=0.jpg",
  //           "messageUserName": "花痴党",
  //           "messageTime": "2021-04-01"
  //         },
  //         {
  //           "messageId": "1001",
  //           "message": "云裳2020北京兰展",
  //           "articmessageUserAvatarlePic": "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=2162071428,2190895476&fm=26&gp=0.jpg",
  //           "messageUserName": "花痴党",
  //           "messageTime": "2021-04-01"
  //         },
  //         {
  //           "messageId": "1001",
  //           "message": "紫花风铃木",
  //           "messageUserAvatar": "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=878408286,2859261148&fm=26&gp=0.jpg",
  //           "messageUserName": "花痴党",
  //           "messageTime": "2021-04-01"
  //         },
  //         {
  //           "messageId": "1001",
  //           "message": "白雪木",
  //           "messageUserAvatar": "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1821200571,31466678&fm=26&gp=0.jpg",
  //           "messageUserName": "一花一世界",
  //           "messageTime": "2021-04-01"
  //         },
  //         {
  //           "messageId": "1001",
  //           "message": "你好",
  //           "messageUserAvatar": "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3432023094,105020052&fm=26&gp=0.jpg",
  //           "messageUserName": "一花一世界",
  //           "messageTime": "2021-04-01"
  //         },
  //         {
  //           "messageId": "1001",
  //           "message": "交个朋友吧",
  //           "messageUserAvatar": "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3501583875,315743878&fm=26&gp=0.jpg",
  //           "messageUserName": "一花一世界",
  //           "messageTime": "2021-04-01"
  //         },
  //       ]
  //     }
  //     """);
  //   });
  // }
}
