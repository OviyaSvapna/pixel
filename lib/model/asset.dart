class Asset {
  Asset({
    required this.id,
    required this.assetId,
    required this.type,
    required this.model,
    required this.owner,
    required this.serialNumber,
    required this.status,
    required this.ownerShip,
    required this.warrantyEndDate,
  });

  String id;
  String assetId;
  String type;
  String model;
  String owner;
  String serialNumber;
  String status;
  String ownerShip;
  String warrantyEndDate;

  factory Asset.from(Map<String, dynamic> data) {
    return Asset(
      id: data['id'].toString(),
      assetId: data['assetId'],
      type: data['type'],
      model: data['model'],
      owner: data['owner'] ?? '',
      serialNumber: data['serialNumber'] ?? '',
      status: data['status'],
      ownerShip: data['ownerShip'] ?? '',
      warrantyEndDate: data['warrantyEndDate'] ?? ''
    );
  }

  Map toMap() {
    return {
      'id': id,
      'assetId': assetId,
      'type': type,
      'model': model,
      'owner': owner,
      'serialNumber': serialNumber,
      'status': status,
      'ownerShip':ownerShip,
      'warrantyEndDate':warrantyEndDate
    };
  }
}
