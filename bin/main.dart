import 'dart:convert';
import 'dart:io';

import 'package:untitled/untitled.dart' as untitled;

Future main() async {
  ServerSocket.bind(InternetAddress.ANY_IP_V4, 80).then(
          (ServerSocket server) {
        server.listen(handleClient);
      }
  );
}

  void handleClient(Socket client){
    print('Connection from '
        '${client.remoteAddress.address}:${client.remotePort}');

    client.write("Hello from simple server!\n");
    client.close();
  }




