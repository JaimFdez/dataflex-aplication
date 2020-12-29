import 'package:dataflex_erp/src/bloc/login_bloc.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget {

  final loginBloc = LoginBloc();

  Provider({ Key key, Widget child })
      : super( key: key, child: child );

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static LoginBloc of ( BuildContext context ) {
    // ignore: deprecated_member_use
    return ( context.inheritFromWidgetOfExactType(Provider) as Provider ).loginBloc; 
  }

}