/// status : 200
/// message : "success"
/// data : [{"id":1,"user_id":2,"book_id":1,"tanggal_pinjam":"2024-01-01 00:00:00","tanggal_kembali":"2024-01-10 00:00:00","status":"DIPINJAM","created_at":"2024-01-09T06:09:06.000000Z","updated_at":"2024-01-09T06:09:06.000000Z","user":{"id":2,"username":"said","nama":"said","telp":"085","alamat":"alamat","role":"PEMINJAM","created_at":"2024-01-09T05:36:44.000000Z","updated_at":"2024-01-09T05:36:44.000000Z"},"book":{"id":1,"kategori_id":1,"judul":"Belajar mengenal angka","penulis":"kusnaidi","penerbit":"PT alangka","tahun_terbit":2024,"created_at":"2024-01-09T05:43:09.000000Z","updated_at":"2024-01-09T05:43:09.000000Z"}}]

class ResponsePinjam {
  ResponsePinjam({
      num status, 
      String message, 
      List<Data> data,}){
    _status = status;
    _message = message;
    _data = data;
}

  ResponsePinjam.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
  }
  num _status;
  String _message;
  List<Data> _data;
ResponsePinjam copyWith({  num status,
  String message,
  List<Data> data,
}) => ResponsePinjam(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
);
  num get status => _status;
  String get message => _message;
  List<Data> get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// user_id : 2
/// book_id : 1
/// tanggal_pinjam : "2024-01-01 00:00:00"
/// tanggal_kembali : "2024-01-10 00:00:00"
/// status : "DIPINJAM"
/// created_at : "2024-01-09T06:09:06.000000Z"
/// updated_at : "2024-01-09T06:09:06.000000Z"
/// user : {"id":2,"username":"said","nama":"said","telp":"085","alamat":"alamat","role":"PEMINJAM","created_at":"2024-01-09T05:36:44.000000Z","updated_at":"2024-01-09T05:36:44.000000Z"}
/// book : {"id":1,"kategori_id":1,"judul":"Belajar mengenal angka","penulis":"kusnaidi","penerbit":"PT alangka","tahun_terbit":2024,"created_at":"2024-01-09T05:43:09.000000Z","updated_at":"2024-01-09T05:43:09.000000Z"}

class Data {
  Data({
      num id, 
      num userId, 
      num bookId, 
      String tanggalPinjam, 
      String tanggalKembali, 
      String status, 
      String createdAt, 
      String updatedAt, 
      User user, 
      Book book,}){
    _id = id;
    _userId = userId;
    _bookId = bookId;
    _tanggalPinjam = tanggalPinjam;
    _tanggalKembali = tanggalKembali;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _user = user;
    _book = book;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _bookId = json['book_id'];
    _tanggalPinjam = json['tanggal_pinjam'];
    _tanggalKembali = json['tanggal_kembali'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _book = json['book'] != null ? Book.fromJson(json['book']) : null;
  }
  num _id;
  num _userId;
  num _bookId;
  String _tanggalPinjam;
  String _tanggalKembali;
  String _status;
  String _createdAt;
  String _updatedAt;
  User _user;
  Book _book;
Data copyWith({  num id,
  num userId,
  num bookId,
  String tanggalPinjam,
  String tanggalKembali,
  String status,
  String createdAt,
  String updatedAt,
  User user,
  Book book,
}) => Data(  id: id ?? _id,
  userId: userId ?? _userId,
  bookId: bookId ?? _bookId,
  tanggalPinjam: tanggalPinjam ?? _tanggalPinjam,
  tanggalKembali: tanggalKembali ?? _tanggalKembali,
  status: status ?? _status,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  user: user ?? _user,
  book: book ?? _book,
);
  num get id => _id;
  num get userId => _userId;
  num get bookId => _bookId;
  String get tanggalPinjam => _tanggalPinjam;
  String get tanggalKembali => _tanggalKembali;
  String get status => _status;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;
  User get user => _user;
  Book get book => _book;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['book_id'] = _bookId;
    map['tanggal_pinjam'] = _tanggalPinjam;
    map['tanggal_kembali'] = _tanggalKembali;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_user != null) {
      map['user'] = _user.toJson();
    }
    if (_book != null) {
      map['book'] = _book.toJson();
    }
    return map;
  }

}

/// id : 1
/// kategori_id : 1
/// judul : "Belajar mengenal angka"
/// penulis : "kusnaidi"
/// penerbit : "PT alangka"
/// tahun_terbit : 2024
/// created_at : "2024-01-09T05:43:09.000000Z"
/// updated_at : "2024-01-09T05:43:09.000000Z"

class Book {
  Book({
      num id, 
      num kategoriId, 
      String judul, 
      String penulis, 
      String penerbit, 
      num tahunTerbit, 
      String createdAt, 
      String updatedAt,}){
    _id = id;
    _kategoriId = kategoriId;
    _judul = judul;
    _penulis = penulis;
    _penerbit = penerbit;
    _tahunTerbit = tahunTerbit;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Book.fromJson(dynamic json) {
    _id = json['id'];
    _kategoriId = json['kategori_id'];
    _judul = json['judul'];
    _penulis = json['penulis'];
    _penerbit = json['penerbit'];
    _tahunTerbit = json['tahun_terbit'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num _id;
  num _kategoriId;
  String _judul;
  String _penulis;
  String _penerbit;
  num _tahunTerbit;
  String _createdAt;
  String _updatedAt;
Book copyWith({  num id,
  num kategoriId,
  String judul,
  String penulis,
  String penerbit,
  num tahunTerbit,
  String createdAt,
  String updatedAt,
}) => Book(  id: id ?? _id,
  kategoriId: kategoriId ?? _kategoriId,
  judul: judul ?? _judul,
  penulis: penulis ?? _penulis,
  penerbit: penerbit ?? _penerbit,
  tahunTerbit: tahunTerbit ?? _tahunTerbit,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num get id => _id;
  num get kategoriId => _kategoriId;
  String get judul => _judul;
  String get penulis => _penulis;
  String get penerbit => _penerbit;
  num get tahunTerbit => _tahunTerbit;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['kategori_id'] = _kategoriId;
    map['judul'] = _judul;
    map['penulis'] = _penulis;
    map['penerbit'] = _penerbit;
    map['tahun_terbit'] = _tahunTerbit;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 2
/// username : "said"
/// nama : "said"
/// telp : "085"
/// alamat : "alamat"
/// role : "PEMINJAM"
/// created_at : "2024-01-09T05:36:44.000000Z"
/// updated_at : "2024-01-09T05:36:44.000000Z"

class User {
  User({
      num id, 
      String username, 
      String nama, 
      String telp, 
      String alamat, 
      String role, 
      String createdAt, 
      String updatedAt,}){
    _id = id;
    _username = username;
    _nama = nama;
    _telp = telp;
    _alamat = alamat;
    _role = role;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  User.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _nama = json['nama'];
    _telp = json['telp'];
    _alamat = json['alamat'];
    _role = json['role'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num _id;
  String _username;
  String _nama;
  String _telp;
  String _alamat;
  String _role;
  String _createdAt;
  String _updatedAt;
User copyWith({  num id,
  String username,
  String nama,
  String telp,
  String alamat,
  String role,
  String createdAt,
  String updatedAt,
}) => User(  id: id ?? _id,
  username: username ?? _username,
  nama: nama ?? _nama,
  telp: telp ?? _telp,
  alamat: alamat ?? _alamat,
  role: role ?? _role,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  num get id => _id;
  String get username => _username;
  String get nama => _nama;
  String get telp => _telp;
  String get alamat => _alamat;
  String get role => _role;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['nama'] = _nama;
    map['telp'] = _telp;
    map['alamat'] = _alamat;
    map['role'] = _role;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}