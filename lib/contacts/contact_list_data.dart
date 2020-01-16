class ContactData {
  String imageUrl;
  String localImage;
  String title;
  String sideKey;

  ContactData(this.title, this.imageUrl, this.sideKey,this.localImage);
}

List<ContactData> contactDataList = [
  new ContactData('阿爸', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg', 'a',''),
  new ContactData('不是爸', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1820019449,472177281&fm=26&gp=0.jpg', 'b',''),
  new ContactData('博陈爸', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg', 'b',''),
  new ContactData('辰爸', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1820019449,472177281&fm=26&gp=0.jpg', 'c',''),
  new ContactData('车爸', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1820019449,472177281&fm=26&gp=0.jpg', 'c',''),
  new ContactData('购爸', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg', 'g',''),
  new ContactData('知爸', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg', 'z',''),
  new ContactData('我爸', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1313061672,3940527444&fm=26&gp=0.jpg', 'w',''),
  new ContactData('f爸', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1820019449,472177281&fm=26&gp=0.jpg', 'f','')
];
