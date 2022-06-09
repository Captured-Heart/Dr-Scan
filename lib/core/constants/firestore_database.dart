import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drscanner/core/constants/auth_methods.dart';

class DataBaseService {
  final String? uid;
  final String? nameController;
  final String? emailController;
  final String? numberController;
  final String? addressController;
  final String? genderController;
  final String? dobController;

  DataBaseService(
      {this.nameController,
      this.emailController,
      this.numberController,
      this.addressController,
      this.genderController,
      this.dobController,
      this.uid});
  AuthMethods authMethods = AuthMethods();

  // final CollectionReference userSchedule =
  //     FirebaseFirestore.instance.collection('Schedule');



  Future setUserPersonal(adsMap) async {
    final uuid = await authMethods.getCurrentUID();
    final DocumentReference userDetails =
        FirebaseFirestore.instance.collection('users').doc(uuid);
    return await userDetails.set(adsMap);
  }
 
   Future setPatientsData(adsMap, String name) async {
    // final uuid = await authMethods.getCurrentUID();
    final DocumentReference userDetails =
        FirebaseFirestore.instance.collection('patients').doc(name);
    return await userDetails.set(adsMap);
  }
  Future updatePatientsData(adsMap, String name) async {
    // final uuid = await authMethods.getCurrentUID();
    final DocumentReference userDetails =
        FirebaseFirestore.instance.collection('patients').doc(name);
    return await userDetails.update(adsMap);
  }
  
//CREATE DATABASE FOR SCHEDULE
//   Future updateUserSchedule(scheduleMap) async {
//     return await userSchedule.add(scheduleMap);
//   }

// //TRYING TO RETURN SAVED SCHEDULE FILES FROM DATABASE
//   Future returnScheduleDetails(sMap) async {
//     return await userSchedule.get();
//   }
}
