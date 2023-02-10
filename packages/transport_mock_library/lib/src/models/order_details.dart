class OrderDetails {
  const OrderDetails(
      {required this.pickupLocation,
      required this.dropLocation,
      required this.orderId,
      required this.pickupDate,
      required this.preferredVehicle,
      required this.quantityOfLoad,
      required this.materialType,
      required this.companyName,
      required this.operatorName,
      required this.phoneNumber,
      required this.truckNo,
      required this.driverNo});

  final String pickupLocation;
  final String dropLocation;
  final String orderId;
  final String pickupDate;
  final String preferredVehicle;
  final String quantityOfLoad;
  final String materialType;
  final String companyName;
  final String operatorName;
  final String phoneNumber;
  final String truckNo;
  final String driverNo;
}
