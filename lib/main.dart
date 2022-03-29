import 'package:cooportega/services/chat_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:cooportega/services/auth_service.dart';
import 'package:cooportega/services/socket_service.dart';

import 'package:cooportega/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Cambiamos maltiapp por multiprovider
    return MultiProvider(
      providers: [
        //Para el manejo de estados una lista
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => SocketService()),
        ChangeNotifierProvider(create: (_) => ChatService())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat App',
        initialRoute: 'loading',
        routes: appRoutes,
      ),
    );
  }
}
