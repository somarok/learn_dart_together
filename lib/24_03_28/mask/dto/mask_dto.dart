import 'package:learn_dart_together/24_03_28/mask/dto/store_dto.dart';

class MaskDto {
  num? count;
  List<StoreDto>? stores;

  MaskDto({
    this.count,
    this.stores,
  });

  MaskDto.fromJson(dynamic json) {
    count = json['count'];
    if (json['stores'] != null) {
      stores = [];
      json['stores'].forEach((v) {
        stores?.add(StoreDto.fromJson(v));
      });
    }
  }

  MaskDto copyWith({
    num? count,
    List<StoreDto>? stores,
  }) =>
      MaskDto(
        count: count ?? this.count,
        stores: stores ?? this.stores,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    if (stores != null) {
      map['stores'] = stores?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
