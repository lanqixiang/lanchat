class MessageData {
  String title;
  String subTitle;
  DateTime time;
  String imageUrl;
  MessageType type;

  MessageData(this.title, this.subTitle, this.imageUrl, this.time, this.type);
}

enum MessageType { SYSTEM, PUBLIC, CHAT }

List<MessageData> messageData = [
  new MessageData(
      "我喜欢兔兔",
      "大耳朵兔兔",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg",
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      "我喜欢兔兔2",
      "大耳朵兔兔",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1820019449,472177281&fm=26&gp=0.jpg",
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      "我喜欢兔兔3",
      "大耳朵兔兔",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg",
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      "我喜欢兔兔4",
      "大耳朵兔兔",
      "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2274148892,2953979408&fm=26&gp=0.jpg",
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      "我喜欢兔兔5",
      "大耳朵兔兔",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg",
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      "我喜欢兔兔6",
      "大耳朵兔兔",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg",
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      "我喜欢兔兔7",
      "大耳朵兔兔",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg",
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      "我喜欢兔兔8",
      "大耳朵兔兔",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg",
      new DateTime.now(),
      MessageType.CHAT),
  new MessageData(
      "我喜欢兔兔9",
      "大耳朵兔兔",
      "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg",
      new DateTime.now(),
      MessageType.CHAT),
];
