class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasActiveCard;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCard,
  });

  Map<String, Object> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasActiveCard': hasActiveCard,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      userId: doc['userId'] as String,
      email: doc['email'] as String,
      name: doc['name'] as String,
      hasActiveCard: doc['hasActiveCard'],
    );
  }
}
