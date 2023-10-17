class LoginRepositories {
  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () async {
        // Do your api logic here for login

          if (result.hasException) {
          authFail = result.exception!.graphqlErrors.first.message.toString();
          throw Exception(authFail);
        } else if (result.data?['tokenAuth'] != null) {
          secureToken(result.data?['tokenAuth']['token'],
              result.data?['tokenAuth']['refreshToken']);

          await UserRepository().getUser();
          _controller.add(AuthenticationStatus.authenticated);
        }
      },
    );
  }
}
