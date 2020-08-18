import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:customer_view_components_assignment/widgets/active_project_list.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        children: [
          PreferredSize(
              child: TabBar(
                  labelColor: LightColors.DarkBlue,
                  indicatorColor: LightColors.Green,
                  unselectedLabelColor: LightColors.Grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  indicatorWeight: 3.0,
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quicksand',
                      fontSize: 12.0),
                  tabs: [
                    new Container(
                        width: 100,
                        alignment: Alignment.center,
                        child: Tab(text: 'Project Tasks')),
                    new Container(width: 70.0, child: Tab(text: 'Contacts')),
                    new Container(width: 70.0, child: Tab(text: 'About you')),
                  ]),
              preferredSize: Size.fromHeight(50.0)),
          Container(
            height: MediaQuery.of(context).size.height - 400,
            child: TabBarView(children: [
              SingleChildScrollView(
                child: Container(
                    color: LightColors.LightLavender,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ActiveProjectList('3h', 'Contact page', false,
                                'assets/images/avatar1.png', 'N^2 163', 3, 5),
                          ],
                        ),
                        Stack(
                          children: [
                            ActiveProjectList(
                                '1d 5h',
                                'Create Mobile Version',
                                false,
                                'assets/images/avatar1.png',
                                'N^2 156',
                                15,
                                9),
                          ],
                        ),
                        Stack(
                          children: [
                            ActiveProjectList('1h', 'Buttons, pop-up', true,
                                'assets/images/avatar1.png', 'N^2 163', 3, 5),
                          ],
                        ),
                      ],
                    )),
              ),
              Container(
                color: LightColors.LightLavender,
              ),
              Container(
                color: LightColors.LightLavender,
              )
            ]),
          )
        ],
      ),
    );
  }
}
