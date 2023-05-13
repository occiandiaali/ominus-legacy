class Message {
  Message({
    required this.id,
    required this.profileId,
    required this.content,
    required this.createdAt,
    required this.sentByMe,
});

  // ID of the message
final String id;
 // ID of the user posting message
 final String profileId;

 // message text
 final String content;

 // Timestamp of message creation
final DateTime createdAt;

 // Was message sent by user?
 final bool sentByMe;

 Message.fromMap({
    required Map<String, dynamic> map,
   required String myUserId,
}) : id = map['id'],
     profileId = map['profile_id'],
     content = map['content'],
     createdAt = DateTime.parse(map['created_at']),
     sentByMe = myUserId == map['profile_id'];


}
