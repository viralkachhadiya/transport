import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:transport/core/constants/color_constant.dart';
import 'package:transport/core/constants/string_constant.dart';
import 'package:transport/core/router/router_path.dart';
import 'package:transport/core/widgets/stepper.dart';
import 'package:transport_mock_library/transport_mock_library.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var repository = OrderDetailsRepositoryMock();
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
            _order(order: repository.orderData()),
            _loadStatus(),
            _fleetOperator(order: repository.orderData()),
            _truckDriver(context: context, order: repository.orderData()),
          ]),
    );
  }

  Widget _order({required OrderDetails order}) {
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
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            StringConstant.pickupLocation,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                          Text(
                            order.pickupLocation,
                            style: const TextStyle(
                                fontSize: 14,
                                color: ColorConstant.kCardIconColor),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            StringConstant.dropLocation,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                          Text(
                            order.dropLocation,
                            style: const TextStyle(
                                fontSize: 14,
                                color: ColorConstant.kCardIconColor),
                          ),
                        ],
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        StringConstant.truckIcon,
                        height: 120,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringConstant.orderId,
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.3)),
                      ),
                      Text(
                        order.orderId,
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
                        StringConstant.pickupDate,
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.3)),
                      ),
                      Text(
                        order.pickupDate,
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
                        StringConstant.preferredVehicle,
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.3)),
                      ),
                      Text(
                        order.preferredVehicle,
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
                        StringConstant.quantityOfLoad,
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.3)),
                      ),
                      Text(
                        order.quantityOfLoad,
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
                        StringConstant.materialType,
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.3)),
                      ),
                      Text(
                        order.materialType,
                        style: const TextStyle(
                            fontSize: 14, color: ColorConstant.kCardIconColor),
                      )
                    ],
                  ),
                ])));
  }

  Widget _loadStatus() {
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
                  StringConstant.loadStatus,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 8,
                ),
                StepProgressView(
                  curStep: 4,
                  titles: const [
                    StringConstant.pending,
                    StringConstant.quoted,
                    StringConstant.scheduled,
                    StringConstant.inProgress
                  ],
                  color: ColorConstant.kCardIconColor,
                  width: 70,
                )
              ],
            )));
  }

  Widget _fleetOperator({required OrderDetails order}) {
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
                order.companyName,
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
                order.operatorName,
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
                order.phoneNumber,
                style: const TextStyle(
                    fontSize: 14, color: ColorConstant.kCardIconColor),
              )
            ],
          )
        ]),
      ),
    );
  }

  Widget _truckDriver(
      {required BuildContext context, required OrderDetails order}) {
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
                    StringConstant.truckDriver,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: ColorConstant.kCardColor,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.3),
                        )),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      StringConstant.truckNo,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black.withOpacity(0.3)),
                                    ),
                                    Text(
                                      order.truckNo,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: ColorConstant.kCardIconColor),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      StringConstant.driverNo,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black.withOpacity(0.3)),
                                    ),
                                    Text(
                                      order.driverNo,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: ColorConstant.kCardIconColor),
                                    )
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.arrow_right,
                                      color: ColorConstant.kGreenColor,
                                      size: 18,
                                    ),
                                    Text(
                                      StringConstant.delivered,
                                      style: TextStyle(
                                          color: ColorConstant.kGreenColor,
                                          fontSize: 14),
                                    )
                                  ],
                                )
                              ]),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        InkWell(
                          onTap: () {
                            context.router.pushNamed(RouterPath.truckDetails);
                          },
                          child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80.0),
                                  color: ColorConstant.kGreenColor),
                              child: const Text(
                                StringConstant.liveStatus,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )),
                        )
                      ],
                    ),
                  )
                ])));
  }
}
