import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/presentation/widgets/bottom_nav.dart';
import 'package:flutter_clean_architecture/features/feature_bookmark/presentation/bloc/cw_status.dart';
import 'package:flutter_clean_architecture/features/feature_bookmark/presentation/bloc/home_bloc.dart';
import 'package:flutter_clean_architecture/features/feature_bookmark/presentation/pages/bookmark_page.dart';
import 'package:flutter_clean_architecture/features/feature_weather/presentation/pages/home_page.dart';
import 'package:flutter_clean_architecture/features/feature_weather/domain/entities/current_city_entity.dart';


class MainWrapper extends StatelessWidget {
  MainWrapper({Key? key}) : super(key: key);

  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    List <Widget> pageViewWidgets = [
      const HomePage(),
      const BookMarkPage(),
    ];
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomNav(pageController: pageController),
      body: Container(
        height: height,
        decoration: const BoxDecoration(
          color: Colors.amber
        ),
        child: PageView(
          controller: pageController,
          children: pageViewWidgets,
        ),
      ),
    );
  }
}



/*
class MainWrapper extends StatefulWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {

  @override
  void initState() {
    super.initState();

    BlocProvider.of<HomeBloc>(context).add(LoadCwEvent("tehran"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: BlocBuilder<HomeBloc,HomeState>(
        builder: (context,state){
          if(state.cwStatus is CwLoading){
            return Center(child: Text("loading..."),);
          }
          if(state.cwStatus is CwComplete){
            ///Cast
            final CwComplete cwComplete = state.cwStatus as CwComplete;
            final CurrentCityEntity currentCityEntity = cwComplete.currentCityEntity;
            return Center(child: Text(currentCityEntity.name.toString()),);
          }
          if(state.cwStatus is CwError){
            return Center(child: Text("error"),);
          }

          return Container();
        },
      ),
    );
  }

}
*/