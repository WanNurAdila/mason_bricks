import '../{{name}}.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{name.pascalCase()}}View extends StatefulWidget {

  const {{name.pascalCase()}}View({super.key});

  @override
  State<{{name.pascalCase()}}View> createState() => _{{name.pascalCase()}}State();

}


class _{{name.pascalCase()}}State extends State<{{name.pascalCase()}}View> {

  final _scrollController = ScrollController();

 refreshPage() async {
// You can do run any refresh function here
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:RefreshIndicator(
      onRefresh: () => refreshPage(),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(children: [

          BlocBuilder<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
            builder: (context, state) {
              switch (state.status) {
                case {{name.pascalCase()}}Status.failure:
                return Center(child: Text('Fail'));
                case {{name.pascalCase()}}Status.success:
                {
                  return Center(child: Text('Success'));
                }
                default: return Center(child: Text('Loading'));
              }
            }
          )

        ]),
      )) ,);
  }

  /// Function ///
  
   @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() async {
  if (_isBottom) {

    // when the scroll reached bottom, all logic here will run
  }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}