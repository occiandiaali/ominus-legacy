class Profile {
  Profile({
    required this.id,
    required this.username,
    required this.createdAt,
});

  // user id of the profile owner
  final String id;

  // username of the profile owner
  final String username;

  // timestamp for when profile was created
  final DateTime createdAt;

  Profile.fromMap(Map<String, dynamic> map)
    : id = map['id'],
      username = map['username'],
      createdAt = DateTime.parse(map['created_at']);
}
