import 'package:transport_mock_library/src/models/order_details.dart';
import 'package:transport_mock_library/src/repository/order_details_repository.dart';

class OrderDetailsRepositoryMock implements OrderDetailsRepository {
  @override
  OrderDetails orderData() =>
      OrderDetails(
          pickupLocation: "Shreerang Society, Thane West, Thane, Maharashtra",
          dropLocation: "Rohini, New Delhi, Delhi",
          orderId: "52",
          pickupDate: "26-Jan-23",
          preferredVehicle: "Trailer",
          quantityOfLoad: "20.0 Tonne",
          materialType: "steel",
          companyName: "SN Logistics",
          operatorName: "Sanchit Nar",
          phoneNumber: "8595114160",
          truckNo: "W34567",
          driverNo: "8595114164");
}