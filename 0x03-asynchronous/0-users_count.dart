Future<void> usersCount() async {
  var count = await fetchUsersCount();
  print(count);
}