import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:biocom2/aws_services/user.dart';
import 'package:biocom2/consult_now/consult_now.dart';
import 'package:biocom2/doctor_contacts/doctor_contacts.dart';
import 'package:biocom2/doctor_contacts/floating_button.dart';
import 'package:biocom2/doctor_contacts/doctor_info_page.dart';
import 'package:biocom2/doctor_contacts/navigate_to_doctor.dart';
import 'package:biocom2/emergency/emergency.dart';
import 'package:biocom2/home_screen/dashboard.dart';
import 'package:biocom2/home_screen/on_boarding_screen.dart';
import 'package:biocom2/login_screen/login_screen.dart';
import 'package:biocom2/meet_my_patients/meet_my_patients.dart';
import 'package:biocom2/new_adobe_designs/dashboard.dart';
import 'package:biocom2/new_adobe_designs/my_profile.dart';
import 'package:biocom2/new_adobe_designs/otp_screen.dart';
import 'package:biocom2/new_adobe_designs/welcome_screen.dart';
import 'package:biocom2/new_adobe_designs_patient/all_doctors_page.dart';
import 'package:biocom2/new_adobe_designs_patient/dashboard_p.dart';
import 'package:biocom2/new_adobe_designs_patient/welcome_screen_p.dart';
import 'package:biocom2/new_login_signup/choose_type_page.dart';
import 'package:biocom2/new_login_signup/doctor_reg_page.dart';
import 'package:biocom2/new_login_signup/patient_reg_page.dart';
import 'package:biocom2/registration_screen/registration_screen.dart';
import 'package:biocom2/view_record/view_record.dart';
import 'package:biocom2/welcome_animation/welcome_animation.dart';
import 'package:flutter/material.dart';
import 'package:biocom2/my_profile/my_profile.dart';
import 'package:biocom2/meet_my_patients/qr_code_scanner.dart';

void main() => runApp(MyApp());

final userPool = new CognitoUserPool(
  'us-east-1_RrWQ0yWhg',
  '7omgkncbjkr1rdc7lotit0dlfb',
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AdobeDashboard.id,
      routes: {
        AdobeWelcomeScreen.id: (context) => AdobeWelcomeScreen(),
        AdobeDashboard.id: (context) => AdobeDashboard(),
        AdobeMyProfile.id: (context) => AdobeMyProfile(),
        AdobeOTPScreen.id: (context) => AdobeOTPScreen(),
        AdobeWelcomeScreenPatient.id: (context) => AdobeWelcomeScreenPatient(),
        AdobeAllDoctorsPage.id: (context) => AdobeAllDoctorsPage(),
        AdobeDashboardPatient.id: (context) => AdobeDashboardPatient(),
      },
//      routes: {
//        // Named Routes
//        WelcomeAnimation.id: (context) => WelcomeAnimation(),
//        ChooseTypePage.id: (context) => ChooseTypePage(),
//        DoctorRegPage.id: (context) => DoctorRegPage(),
//        PatientRegPage.id: (context) => PatientRegPage(),
//        LoginScreen.id: (context) => LoginScreen(),
//        RegistrationScreen.id: (context) => RegistrationScreen(),
//        OnboardingScreen.id: (context) => OnboardingScreen(),
//        Home.id: (context) => Home(),
//        MeetMyPatients.id: (context) => MeetMyPatients(),
//        ViewRecord.id: (context) => ViewRecord(),
//        QrCodeScanner.id: (context) => QrCodeScanner(),
//        ConsultNow.id: (context) => ConsultNow(),
//        Emergency.id: (context) => Emergency(),
//        MyProfile.id: (context) => MyProfile(),
//        DoctorContacts.id: (context) => DoctorContacts(),
//        MessageTile.id: (context) => MessageTile(),
//        NavigateToDoctor.id: (context) => NavigateToDoctor(),
//      },
//      home: FutureBuilder(
//        future: userService.getCurrentUser(),
//        builder: (context, snapshot) {
//          if (snapshot.hasData) {
//            return Home();
//          } else {
//            return DoctorRegPage();
//          }
//        },
//      ),
    );
  }
}
