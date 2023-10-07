class AuthRepository{
  Future<void> signin() async{
    print('attempting login');
    Future.delayed(Duration(seconds: 3));
    print('logged in');
  }
}