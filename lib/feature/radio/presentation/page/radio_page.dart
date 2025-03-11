import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../generated/l10n.dart';
import '../../../common/app_style.dart';
import '../controller/current_station.dart';
import '../widget/radio_favorites_widget.dart';
import '../widget/radio_history_widget.dart';
import '../widget/radio_stations_widget.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late List<Widget> tabs;

  @override
  void initState() {
    super.initState();

    tabs = _tabs(context);
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStyle.appBarBackgroundColor,
        foregroundColor: AppStyle.appBarForegroundColor,
        centerTitle: true,
        title: _title(context),
        bottom: TabBar(
          controller: tabController,
          tabs: tabs,
          indicatorColor: Colors.amber,
        ),
      ),
      backgroundColor: AppStyle.contentBackgroundColor,
      body: TabBarView(
        controller: tabController,
        children: _tabBarViews(),
      ),
    );
  }

  Widget _title(BuildContext context) {
    Widget widget;
    widget = Consumer(
      builder: (context, ref, child) {
        final currentStation = ref.watch(currentStationProvider);
        if (currentStation.stationUuid.isNotEmpty) {
          return Text(currentStation.name, style: AppStyle.textMedium);
        } else {
          switch (tabController.index) {
            case 0:
              return Text(S.of(context).radio_station,
                  style: AppStyle.textMedium);
            case 1:
              return Text(S.of(context).radio_favorite,
                  style: AppStyle.textMedium);
            default:
              return Text(S.of(context).radio_history,
                  style: AppStyle.textMedium);
          }
        }
      },
    );

    return widget;
  }

  _tabs(BuildContext context) {
    return [
      Tab(
        // text: S.of(context).radio_stations,
        icon: Icon(Icons.radio, color: AppStyle.iconColor),
      ),
      Tab(
        // text: S.of(context).radio_favorites,
        icon: Icon(Icons.favorite, color: AppStyle.iconColor),
      ),
      Tab(
        // text: S.of(context).radio_history,
        icon: Icon(Icons.history, color: AppStyle.iconColor),
      ),
    ];
  }

  _tabBarViews() {
    return [
      const RadioStationsWidget(),
      const RadioFavoritesWidget(),
      const RadioHistoryWidget(),
    ];
  }
}
