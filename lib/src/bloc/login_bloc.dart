import 'dart:async';

class LoginBloc {
  
  final _userController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  //Recuperar los datos del Stream
  Stream<String> get userStream => _userController.stream;
  Stream<String> get passwordStream => _passwordController.stream;

  //Insertar valores al Stream
  Function(String) get changeUser => _userController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose() {
    _userController?.close();
    _passwordController?.close();
  }

}