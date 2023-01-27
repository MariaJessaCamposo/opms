import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  final String date_reg;
  final String fname;

  // final String mname;
  // final String lname;
  final String birthday;
  final String gender;
  final int age;
  final String address;
  final String contact;

  User({
    this.id = '',
    required this.date_reg,
    required this.fname,
    // required this.mname,
    // required this.lname,
    required this.birthday,
    required this.gender,
    required this.age,
    required this.address,
    required this.contact,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'date_reg': date_reg,
        'full_name': fname,
        // 'middle_name': mname,
        // 'last_name': lname,
        'birthday': birthday,
        'gender': gender,
        'age': age,
        'address': address,
        'contact_number': contact,
      };

  factory User.fromDocument(DocumentSnapshot<Map<String, dynamic>> doc) {
    // final map = doc.data();
    return User(
      id: doc.data()!['id'],
      date_reg: doc.data()!['date_reg'],
      fname: doc.data()!['full_name'],
      // mname: doc.data()!['middle_name'],
      // lname: doc.data()!['last_name'],
      birthday: doc.data()!['birthday'],
      gender: doc.data()!['gender'],
      age: doc.data()!['age'],
      address: doc.data()!['address'],
      contact: doc.data()!['contact'],
    );
  }
}

// List<Object?> get props => [
//   id,
//   date_reg,
//   fname,
//   birthday,
//   gender,
//   age,
//   address,
//   contact
//
// ];
