import 'package:flutter/material.dart';
import 'package:transport/core/constants/color_constant.dart';
import 'package:transport/core/constants/string_constant.dart';
import 'package:transport/features/my_loads/presentation/widgets/my_loads_card.dart';
import 'package:transport_mock_library/transport_mock_library.dart';

class MyLoadsPage extends StatelessWidget {
  const MyLoadsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorConstant.kBackgroundColor,
        appBar: AppBar(
          backgroundColor: ColorConstant.kAppBarColor,
          bottom: TabBar(
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.black,
            indicatorWeight: 5.0,
            labelStyle: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w700),
            unselectedLabelStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
            tabs: const [
              Tab(
                text: StringConstant.onGoing,
              ),
              Tab(
                text: StringConstant.past,
              )
            ],
          ),
          title: const Text(
            StringConstant.myLoads,
            style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w400),
          ),
        ),
        body: TabBarView(
          children: [_onGoing(), _onGoing()],
        ),
      ),
    );
  }

  Widget _onGoing() {
    var repository = MyLoadsRepositoryMock();
    return ListView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: repository.listMyLoads().length,
      itemBuilder: (context, index) =>
          MyLoadCard(myLoad: repository.listMyLoads()[index]),
    );
  }
}
