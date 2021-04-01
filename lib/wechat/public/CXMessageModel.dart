import 'dart:convert';

class CXMessageModel {
  final String messageId;
  final String message;
  final String messageTime;
  final String messageUserName;
  final String messageUserAvatar;

  CXMessageModel({
    this.messageId,
    this.message,
    this.messageTime,
    this.messageUserName,
    this.messageUserAvatar,
  });

  static List<CXMessageModel> resolveDataFromJsonString(String json) {
    List<CXMessageModel> listModel = new List<CXMessageModel>();
    List list = jsonDecode(json)['list'];
    list.forEach((element) {
      var model = new CXMessageModel(
        messageId: element['messageId'],
        message: element['message'],
        messageTime: element['messageTime'],
        messageUserName: element['messageUserName'],
        messageUserAvatar: element['messageUserAvatar'],
      );
      listModel.add(model);
    });

    return listModel;
  }
}
