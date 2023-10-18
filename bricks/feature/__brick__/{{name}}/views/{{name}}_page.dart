import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../{{name}}.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      {{#appBar}}
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            child: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: false,
                elevation: 0,
                backgroundColor: Theme.of(context).primaryColor,
                titleSpacing: 0,
                title: Text('{{name.pascalCase()}} Appbar')),
          ),
        ),
      {{/appBar}}
      {{^appBar}}
      appBar: PreferredSize(
                preferredSize:const Size.fromHeight(0),
                child: AppBar(
                  systemOverlayStyle:
                   const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
              ),
      {{/appBar}}
    body: MultiBlocProvider(
          providers: [
            BlocProvider<{{name.pascalCase()}}Bloc>(
              create: (_) => {{name.pascalCase()}}Bloc()..add({{name.pascalCase()}}Fetched()),
            ),
          
          ],
          child: SafeArea(child:  {{name.pascalCase()}}View()),
        ),

    );
  }
}