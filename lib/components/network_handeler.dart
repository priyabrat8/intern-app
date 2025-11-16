import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internapp/components/intern_card_group.dart';
import 'package:internapp/components/network_warning.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class NetworkHandeler extends StatefulWidget {
  const NetworkHandeler({super.key});

  @override
  State<NetworkHandeler> createState() => _NetworkHandelerState();
}

class _NetworkHandelerState extends State<NetworkHandeler>
    with SingleTickerProviderStateMixin {
  bool isConnectedToInternet = false;

  StreamSubscription? _internetConnectionStreamSubsription;

  @override
  void initState() {
    super.initState();
    _internetConnectionStreamSubsription = InternetConnection().onStatusChange.listen((event) {
      switch (event) {
        case InternetStatus.connected:
          setState(() {
            isConnectedToInternet = true;
          });
          break;
        case InternetStatus.disconnected:
          setState(() {
            isConnectedToInternet = false;
          });
          break;
      }
    });
  }

  @override
  void dispose() {
    _internetConnectionStreamSubsription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        if (!isConnectedToInternet) const NoNetworkBanner(),
        Expanded(
          child: InternCardGroup(),
        ),
      ],
    );
  }
}