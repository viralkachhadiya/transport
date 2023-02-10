import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:transport/core/constants/color_constant.dart';
import 'package:transport/core/constants/string_constant.dart';
import 'package:transport/core/router/router_path.dart';
import 'package:transport_mock_library/transport_mock_library.dart';

class MyLoadCard extends StatelessWidget {
  const MyLoadCard({Key? key, required this.myLoad}) : super(key: key);
  final MyLoad myLoad;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18.0),
      onTap: () {
        context.router.pushNamed(RouterPath.orderDetails);
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        color: ColorConstant.kCardColor,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorConstant.kCardColor,
            borderRadius: BorderRadius.circular(18.0),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              children: [
                Expanded(
                    child: myLoad.price != null
                        ? Text(
                            "\$ ${myLoad.price!} Per Tonne",
                            style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: ColorConstant.kCardIconColor),
                          )
                        : const Text(
                            StringConstant.pricePending,
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: ColorConstant.kCardIconColor),
                          )),
                const SizedBox(
                  width: 20.0,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: ColorConstant.kCardButtonColor),
                  child: Text(
                    myLoad.status,
                    style: const TextStyle(
                        fontSize: 12.0, color: ColorConstant.kCardIconColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: ColorConstant.kCardIconColor,
                    ),
                    Container(
                      height: 24,
                      width: 3,
                      color: ColorConstant.kCardIconColor,
                    ),
                    const Icon(
                      Icons.flag,
                      color: ColorConstant.kCardIconColor,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        myLoad.from,
                        style: const TextStyle(
                            fontSize: 14.0,
                            color: ColorConstant.kCardIconColor),
                      ),
                      Text(
                        myLoad.fromAtUtc,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black.withOpacity(0.3)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        myLoad.to,
                        style: const TextStyle(
                            fontSize: 14.0,
                            color: ColorConstant.kCardIconColor),
                      ),
                      Text(
                        StringConstant.determinded,
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black.withOpacity(0.3)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Text(
                  "${myLoad.value} ${myLoad.unit} ",
                  style: const TextStyle(
                      fontSize: 12.0, color: ColorConstant.kCardIconColor),
                ),
                Container(
                  height: 3,
                  width: 3,
                  decoration: const BoxDecoration(
                    color: ColorConstant.kCardIconColor,
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  " ${myLoad.name} ",
                  style: const TextStyle(
                      fontSize: 12.0, color: ColorConstant.kCardIconColor),
                ),
                Container(
                  height: 3,
                  width: 3,
                  decoration: const BoxDecoration(
                    color: ColorConstant.kCardIconColor,
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  " ${myLoad.type}",
                  style: const TextStyle(
                      fontSize: 12.0, color: ColorConstant.kCardIconColor),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black.withOpacity(0.3),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
