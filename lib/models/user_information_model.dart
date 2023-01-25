class UserInformationModel {
  final String name;
  final String bio;
  final String avatarUrl;
  final List<String> repositories;

  const UserInformationModel({
    required this.name,
    required this.bio,
    required this.avatarUrl,
    required this.repositories,
  });
}
