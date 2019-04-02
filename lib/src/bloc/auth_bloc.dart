import 'dart:async';

class AuthBloc {
  StreamController<String> _emailController =
      StreamController<String>.broadcast();
  StreamController<String> _passwordController =
      StreamController<String>.broadcast();

  Function(String) get _emailSink => _emailController.sink.add;
  Function(String) get _passwordSink => _passwordController.sink.add;

  Stream<String> get email => _emailController.stream;

  onChangeEmail(String e) {
    _emailSink(e);
  }

  onChangePassword(String e) {
    _passwordSink(e);
  }

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

AuthBloc authBloc =AuthBloc();
