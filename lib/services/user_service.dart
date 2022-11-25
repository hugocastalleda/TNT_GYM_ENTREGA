import '../core.dart';

class UserService {
  User getProfile() {
    return User(
      firstname: "Faisal",
      lastname: "Ramdan",
      email: "faisalramdan.id@gmail.com",
      gender: "male",
      phone: "(62) 8569-11-00XX-XX",
      photoURL: "https://",
      dob: DateTime.parse("2017-03-17"),
      company: "Coding Your Life",
      address: UserAddress(
        street: "Permata Street No. 17",
        city: "Bogor",
        province: "West Java",
        country: "Indonesia",
        postalCode: "170712",
      ),
      balance: "17,7jt",
      membership: "Free",
      progress: 77,
    );
  }
}
