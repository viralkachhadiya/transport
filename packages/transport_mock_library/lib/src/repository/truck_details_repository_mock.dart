import 'package:transport_mock_library/src/models/truck_details.dart';
import 'package:transport_mock_library/src/repository/repository.dart';

class TruckDetailsRepositoryMock implements TruckDetailsRepository {
  @override
  TruckDetails truckData() => TruckDetails(
      companyName: "SN Logistics",
      operatorName: "Sanchit Nar",
      phoneNumber: "8595114160",
      truckId: "35",
      truckRegistrationNumber: "W34567",
      driverName: "Sanchit Nar",
      driverPhoneNumber: "8595114164");
}
