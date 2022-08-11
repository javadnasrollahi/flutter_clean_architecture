import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_bookmark/presentation/bloc/home_bloc.dart';
import 'core/presentation/ui/main_wrapper.dart';
import 'locator.dart';

void main() async{

  ///init locator
  await setup();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_)=> locater<HomeBloc>()),
        ],
        child: MainWrapper(),
    ),
  ));
}
