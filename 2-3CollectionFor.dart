void main() {
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "❤️ $friend",
  ];
  for (var friend in oldFriends) {
    newFriends.add("❤️ $friend");
  }
  print(newFriends);
}
