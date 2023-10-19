class LoginRepositories {
  Future<void> logIn({
    required String {{credential}},
    required String password,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () async {
        // Do your api logic here for login

       if (password != 'Bcss_2013') {
          throw Exception('authFail');
        }
  
      },
    );
  }
}
