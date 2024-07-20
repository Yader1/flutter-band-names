import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

enum ServerStatus{
  Online,
  Offline,
  Connecting
}

class SocketService with ChangeNotifier{
  ServerStatus _serverStatus = ServerStatus.Connecting;

  SocketService(){
    _initConfig();
  }

  void _initConfig(){
    IO.Socket socket = IO.io('http://localhost:3000/', {
      'transports': ['websocket'],
      'autoConnect': true
    });

    socket.onConnect((_) {
      log('connect');
    });

    socket.onDisconnect((_) => log('disconnect'));
  }
}