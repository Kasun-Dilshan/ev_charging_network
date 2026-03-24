enum UserRole { user, admin }

class UserModel {
  const UserModel({
    required this.id,
    required this.email,
    this.displayName,
    required this.role,
  });

  final String id;
  final String email;
  final String? displayName;
  final UserRole role;

  bool get isAdmin => role == UserRole.admin;
}
