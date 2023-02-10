import 'package:flutter/material.dart';
import 'package:transport/core/constants/color_constant.dart';
import 'package:transport/core/constants/string_constant.dart';
import 'package:transport/core/widgets/stepper.dart';
import 'package:transport_mock_library/transport_mock_library.dart';

class TruckDetailsPage extends StatelessWidget {
  const TruckDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var repository = TruckDetailsRepositoryMock();
    return Scaffold(
      backgroundColor: ColorConstant.kAppBarColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: ColorConstant.kAppBarColor,
        title: const Text(
          StringConstant.truckDetails,
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w400),
        ),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          children: [
            _fleetOperator(truck: repository.truckData()),
            _truckDriver(truck: repository.truckData()),
            _truckStatus()
          ]),
    );
  }

  Widget _fleetOperator({required TruckDetails truck}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      color: ColorConstant.kCardColor,
      margin: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: ColorConstant.kCardColor,
            borderRadius: BorderRadius.circular(18.0)),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Text(
            StringConstant.fleetOperator,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringConstant.companyName,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.3)),
              ),
              Text(
                truck.companyName,
                style: const TextStyle(
                    fontSize: 14, color: ColorConstant.kCardIconColor),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringConstant.operatorName,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.3)),
              ),
              Text(
                truck.operatorName,
                style: const TextStyle(
                    fontSize: 14, color: ColorConstant.kCardIconColor),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringConstant.phoneName,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.3)),
              ),
              Text(
                truck.phoneNumber,
                style: const TextStyle(
                    fontSize: 14, color: ColorConstant.kCardIconColor),
              )
            ],
          )
        ]),
      ),
    );
  }

  Widget _truckDriver({required TruckDetails truck}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      color: ColorConstant.kCardColor,
      margin: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: ColorConstant.kCardColor,
            borderRadius: BorderRadius.circular(18.0)),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Text(
            StringConstant.truckDriver,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringConstant.truckID,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.3)),
              ),
              Text(
                truck.truckId,
                style: const TextStyle(
                    fontSize: 14, color: ColorConstant.kCardIconColor),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringConstant.truckRegistrationNumber,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.3)),
              ),
              Text(
                truck.truckRegistrationNumber,
                style: const TextStyle(
                    fontSize: 14, color: ColorConstant.kCardIconColor),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringConstant.driverName,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.3)),
              ),
              Text(
                truck.driverName,
                style: const TextStyle(
                    fontSize: 14, color: ColorConstant.kCardIconColor),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringConstant.driverPhoneNumber,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.3)),
              ),
              Text(
                truck.driverPhoneNumber,
                style: const TextStyle(
                    fontSize: 14, color: ColorConstant.kCardIconColor),
              )
            ],
          )
        ]),
      ),
    );
  }

  Widget _truckStatus() {
    return Card(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        color: ColorConstant.kCardColor,
        margin: const EdgeInsets.all(10.0),
        child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: ColorConstant.kCardColor,
                borderRadius: BorderRadius.circular(18.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  StringConstant.truckStatus,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 8,
                ),
                StepProgressView(
                  curStep: 4,
                  titles: const [
                    StringConstant.pickup,
                    StringConstant.inTransitDropoff,
                    StringConstant.atDropoff,
                    StringConstant.delivered
                  ],
                  color: ColorConstant.kCardIconColor,
                  width: 70,
                )
              ],
            )));
  }
}
