import 'package:adstack/model/listview_model.dart';
import 'package:adstack/widget/left_dashboard.dart';
import 'package:adstack/widget/middle_dashboard.dart';
import 'package:adstack/widget/right_dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<ListViewModel> _listView = const [
    ListViewModel(icons: FaIcon(FontAwesomeIcons.house), title: 'Home'), 
    ListViewModel(icons: FaIcon(FontAwesomeIcons.users), title: 'Employees'),
    ListViewModel(icons: FaIcon(FontAwesomeIcons.clipboardList), title: 'Attendance'), 
    ListViewModel(icons: FaIcon(FontAwesomeIcons.chartPie), title: 'Summary'), 
    ListViewModel(icons: FaIcon(FontAwesomeIcons.infoCircle), title: 'Information') 
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(216, 158, 158, 158),
      body: Row(
        children: [
          LeftDashboard(
            listView: _listView,
          ),
          const MiddleDashboard(),
          const RightDashBoard(),
        ],
      ),
    );
  }
}
