class User {
  String key;
  String userID;
  String email;
  String userName;
  String displayName;
  String imageUrl;
  int followers;
  int following;
  List<String> followersList;
  List<String> followingList;

  User({
    this.key = 'key',
    this.userID = 'userID',
    this.email = 'email',
    this.userName = 'userName',
    this.displayName = 'displayName',
    this.imageUrl = 'imageUrl',
    this.followers = 0,
    this.following = 0,
    this.followersList = const [''],
    this.followingList = const [''],
  });

  User.fromJson(Map<String, dynamic> map) {
    key = map['key'];
    userID = map['userID'];
    email = map['email'];
    userName = map['userName'];
    displayName = map['displayName'];
    imageUrl = map['imageUrl'];
    followers = map['followers'];
    following = map['following'];
    followersList = map['followersList']?.cast<String>();
    followingList = map['followingList']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['key'] = this.key;
    data['userID'] = this.userID;
    data['email'] = this.email;
    data['userName'] = this.userName;
    data['displayName'] = this.displayName;
    data['imageUrl'] = this.imageUrl;
    data['followers'] = this.followers;
    data['following'] = this.following;
    data['followersList'] = this.followersList;
    data['followingList'] = this.followingList;
    return data;
  }
}
