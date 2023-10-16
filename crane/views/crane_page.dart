import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../crane.dart';

class CranePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            child: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: false,
                elevation: 0,
                backgroundColor: Theme.of(context).primaryColor,
                titleSpacing: 0,
                title: Text('Crane Appbar')),
          ),
        ),
      
      
    body: MultiBlocProvider(
          providers: [
            BlocProvider<CraneBloc>(
              create: (_) => CraneBloc()..add(CraneFetched()),
            ),
          
          ],
          child: SafeArea(child:  CraneView()),
        ),

    );
  }
}