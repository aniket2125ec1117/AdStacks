import 'package:adstack/model/listview_model.dart';
import 'package:adstack/size/size.dart';
import 'package:adstack/widget/leftDashBoardWidget/color_expansion.dart';
import 'package:flutter/material.dart';

class LeftDashboard extends StatefulWidget {
  const LeftDashboard({
    super.key,
    required this.listView,
  });

  final List<ListViewModel> listView;

  @override
  State<LeftDashboard> createState() => _LeftDashboardState();
}

class _LeftDashboardState extends State<LeftDashboard> {
  int? selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = constraints.maxWidth >= 1024;
        bool isTablet = constraints.maxWidth >= 600 && constraints.maxWidth < 1024;

        double commonPadding = isDesktop ? 20.0 : (isTablet ? 16.0 : 12.0);
        double avatarRadius = isDesktop ? screenWidth * 0.02 : screenWidth * 0.05;
        double logoHeight = isDesktop ? screenHeight * 0.05 : screenHeight * 0.08;

        return Container(
          height: height(context),
          width: leftWidth(context),
          color: Colors.white,
          child: Column(
            children: [
              // Logo section
              Container(
                height: headerHeight(context),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: logoHeight,
                  width: screenWidth * (isDesktop ? 0.1 : 0.2),
                  fit: BoxFit.contain,
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 231, 231, 231),
                thickness: 3,
                endIndent: 20,
                indent: 20,
              ),
              // Profile section
              Container(
                height: headerHeight(context) * 3,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: const AssetImage('assets/images/logo.png'),
                      radius: avatarRadius,
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      "AdStacks",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 6.0),
                      width: screenWidth * (isDesktop ? 0.1 : 0.2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Admin",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 231, 231, 231),
                thickness: 3,
                endIndent: 20,
                indent: 20,
              ),
              // ListView section
              Expanded(
                child: ListView.builder(
                  itemCount: widget.listView.length + 1, 
                  itemBuilder: (context, index) {
                    if (index < widget.listView.length) {
                      return Padding(
                        padding: EdgeInsets.only(left: commonPadding),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index == selectedIndex ? null : index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? const Color.fromARGB(255, 231, 231, 231)
                                  : Colors.white,
                              borderRadius: selectedIndex == index
                                  ? const BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                    )
                                  : BorderRadius.zero,
                            ),
                            child: ListTile(
                              leading: widget.listView[index].icons,
                              title: Text(widget.listView[index].title),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return const ColoredExpansionTile(
                        title: "WORKSPACES",
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w900),
                        icons: Icon(Icons.add),
                        children: [
                          ColoredExpansionTile(
                            title: "Adstacks",
                            children: [],
                            textStyle: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w500),
                            icons: Icon(Icons.arrow_drop_down),
                          ),
                          ColoredExpansionTile(
                            title: "Finance",
                            children: [],
                            textStyle: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w500),
                            icons: Icon(Icons.arrow_drop_down),
                          )
                        ],
                      );
                    }
                  },
                ),
              ),
              // Settings and Logout
              Padding(
                padding: EdgeInsets.symmetric(horizontal: commonPadding),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          size: isDesktop ? screenHeight * 0.027 : screenHeight * 0.03,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          "Setting",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout,
                          size: isDesktop ? screenHeight * 0.027 : screenHeight * 0.03,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          "Logout",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
