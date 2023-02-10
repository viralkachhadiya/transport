class MyLoad {
  const MyLoad(
      {required this.from,
      required this.fromAtUtc,
      required this.to,
      required this.value,
      required this.unit,
      required this.name,
      required this.type,
      required this.status,
      this.price});

  final String from;
  final String fromAtUtc;
  final String to;
  final String value;
  final String unit;
  final String name;
  final String type;
  final String status;
  final String? price;
}
