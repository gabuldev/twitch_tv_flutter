import 'package:flutter/material.dart';
import 'package:twitch_tv/app/modules/categories/categories_page.dart';
import 'package:twitch_tv/app/modules/channels/widgets/channel_item_widget.dart';
import 'package:twitch_tv/app/modules/home/widgets/app_bar/app_bar_widget.dart';
import 'package:twitch_tv/app/modules/home/widgets/bottom_navigator_bar/bottom_navigator_bar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              CategoriesPage(),
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ChannelItemWidget(
                title: "Tamoligado",
                photoURL:
                    "https://i.pinimg.com/originals/b8/d1/77/b8d177b9e9aee8aa0114bc45ff68e421.jpg",
                subtitle: "AO VIVO",
                bottomtitle: "Just Chatting",
                tags: ["Portuges", "Realidade mista"],
              )
            ]),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigatorBarWidget(
        onChange: print,
      ),
    );
  }
}
