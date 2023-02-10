import 'package:transport_mock_library/transport_mock_library.dart';

class MyLoadsRepositoryMock implements MyLoadsRepository {
  @override
  List<MyLoad> listMyLoads() => [
        MyLoad(
            from: "Delhi Division, Delhi",
            fromAtUtc: "31-Jan-23",
            to: "Delhi Division, Delhi",
            value: "25.0",
            unit: "Tonne",
            name: "Steal",
            type: "Container",
            status: "Pending"),
        MyLoad(
            from: "Thane taluka, Maharashtra",
            fromAtUtc: "26-Jan-23",
            to: "North West Delhi, Delhi",
            value: "20.0",
            unit: "Tonne",
            name: "Steal",
            type: "Trailer",
            status: "In Progress",
            price: "2000.0"),
        MyLoad(
            from: "Sri Ganganagar, Rajasthan",
            fromAtUtc: "19-Jan-23",
            to: "Jaipur, Rajasthan",
            value: "50.0",
            unit: "Tonne",
            name: "furniture",
            type: "Container",
            status: "Pending"),
        MyLoad(
            from: "Delhi Division, Delhi",
            fromAtUtc: "15-Jan-23",
            to: "Delhi Division, Delhi",
            value: "27.0",
            unit: "Tonne",
            name: "Steal",
            type: "Container",
            status: "Pending"),
      ];
}
