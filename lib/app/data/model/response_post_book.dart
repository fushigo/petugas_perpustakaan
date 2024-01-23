/// status : 201
/// message : "success"
/// data : {"kategori_id":1,"judul":"Flutter Getx","penulis":"romli kusnadi","penerbit":"PT Damai Sejahtera","tahun_terbit":2023,"updated_at":"2024-01-12T08:39:03.000000Z","created_at":"2024-01-12T08:39:03.000000Z","id":3}

class ResponsePostBook {
  ResponsePostBook({
      num status, 
      String message, 
      Data data,}){
    _status = status;
    _message = message;
    _data = data;
}

  ResponsePostBook.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num _status;
  String _message;
  Data _data;
ResponsePostBook copyWith({  num status,
  String message,
  Data data,
}) => ResponsePostBook(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  num get status => _status;
  String get message => _message;
  Data get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data.toJson();
    }
    return map;
  }

}

/// kategori_id : 1
/// judul : "Flutter Getx"
/// penulis : "romli kusnadi"
/// penerbit : "PT Damai Sejahtera"
/// tahun_terbit : 2023
/// updated_at : "2024-01-12T08:39:03.000000Z"
/// created_at : "2024-01-12T08:39:03.000000Z"
/// id : 3

class Data {
  Data({
      num kategoriId, 
      String judul, 
      String penulis, 
      String penerbit, 
      num tahunTerbit, 
      String updatedAt, 
      String createdAt, 
      num id,}){
    _kategoriId = kategoriId;
    _judul = judul;
    _penulis = penulis;
    _penerbit = penerbit;
    _tahunTerbit = tahunTerbit;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
}

  Data.fromJson(dynamic json) {
    _kategoriId = json['kategori_id'];
    _judul = json['judul'];
    _penulis = json['penulis'];
    _penerbit = json['penerbit'];
    _tahunTerbit = json['tahun_terbit'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  num _kategoriId;
  String _judul;
  String _penulis;
  String _penerbit;
  num _tahunTerbit;
  String _updatedAt;
  String _createdAt;
  num _id;
Data copyWith({  num kategoriId,
  String judul,
  String penulis,
  String penerbit,
  num tahunTerbit,
  String updatedAt,
  String createdAt,
  num id,
}) => Data(  kategoriId: kategoriId ?? _kategoriId,
  judul: judul ?? _judul,
  penulis: penulis ?? _penulis,
  penerbit: penerbit ?? _penerbit,
  tahunTerbit: tahunTerbit ?? _tahunTerbit,
  updatedAt: updatedAt ?? _updatedAt,
  createdAt: createdAt ?? _createdAt,
  id: id ?? _id,
);
  num get kategoriId => _kategoriId;
  String get judul => _judul;
  String get penulis => _penulis;
  String get penerbit => _penerbit;
  num get tahunTerbit => _tahunTerbit;
  String get updatedAt => _updatedAt;
  String get createdAt => _createdAt;
  num get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kategori_id'] = _kategoriId;
    map['judul'] = _judul;
    map['penulis'] = _penulis;
    map['penerbit'] = _penerbit;
    map['tahun_terbit'] = _tahunTerbit;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }

}