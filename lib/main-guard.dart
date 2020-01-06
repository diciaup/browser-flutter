import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MainGuard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SchedulerBinding.instance.addPostFrameCallback((_) { //ngAfterViewInit callback
      Navigator.of(context).pushNamed('/auth/login');
    });
    return Scaffold(
      body: Center(
        child: Text('Loading...')
      )
    );
  }

}
