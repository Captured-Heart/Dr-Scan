import 'package:drscanner/presentation/patients_list_page_screen/patients_list_page_screen.dart';
import 'package:drscanner/presentation/patients_list_page_screen/binding/patients_list_page_binding.dart';
import 'package:drscanner/presentation/report_page_screen/report_page_screen.dart';
import 'package:drscanner/presentation/report_page_screen/binding/report_page_binding.dart';
import 'package:drscanner/presentation/result_page_screen/result_page_screen.dart';
import 'package:drscanner/presentation/result_page_screen/binding/result_page_binding.dart';
import 'package:drscanner/presentation/analyzing_page_screen/analyzing_page_screen.dart';
import 'package:drscanner/presentation/analyzing_page_screen/binding/analyzing_page_binding.dart';
import 'package:drscanner/presentation/file_selection_page_screen/file_selection_page_screen.dart';
import 'package:drscanner/presentation/file_selection_page_screen/binding/file_selection_page_binding.dart';
import 'package:drscanner/presentation/eye_selection_page_screen/eye_selection_page_screen.dart';
import 'package:drscanner/presentation/eye_selection_page_screen/binding/eye_selection_page_binding.dart';
import 'package:drscanner/presentation/patient_information_page_screen/patient_information_page_screen.dart';
import 'package:drscanner/presentation/patient_information_page_screen/binding/patient_information_page_binding.dart';
import 'package:drscanner/presentation/signup_page_screen/signup_page_screen.dart';
import 'package:drscanner/presentation/signup_page_screen/binding/signup_page_binding.dart';
import 'package:drscanner/presentation/login_page_screen/login_page_screen.dart';
import 'package:drscanner/presentation/login_page_screen/binding/login_page_binding.dart';
import 'package:drscanner/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:drscanner/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String patientsListPageScreen = '/patients_list_page_screen';

  static String reportPageScreen = '/report_page_screen';

  static String resultPageScreen = '/result_page_screen';

  static String analyzingPageScreen = '/analyzing_page_screen';

  static String fileSelectionPageScreen = '/file_selection_page_screen';

  static String eyeSelectionPageScreen = '/eye_selection_page_screen';

  static String patientInformationPageScreen =
      '/patient_information_page_screen';

  static String signupPageScreen = '/signup_page_screen';

  static String loginPageScreen = '/login_page_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: patientsListPageScreen,
      page: () => PatientsListPageScreen(),
      bindings: [
        PatientsListPageBinding(),
      ],
    ),
    GetPage(
      name: reportPageScreen,
      page: () => ReportPageScreen(),
      bindings: [
        ReportPageBinding(),
      ],
    ),
    GetPage(
      name: resultPageScreen,
      page: () => ResultPageScreen(),
      bindings: [
        ResultPageBinding(),
      ],
    ),
    GetPage(
      name: analyzingPageScreen,
      page: () => AnalyzingPageScreen(),
      bindings: [
        AnalyzingPageBinding(),
      ],
    ),
    GetPage(
      name: fileSelectionPageScreen,
      page: () => FileSelectionPageScreen(),
      bindings: [
        FileSelectionPageBinding(),
      ],
    ),
    GetPage(
      name: eyeSelectionPageScreen,
      page: () => EyeSelectionPageScreen(),
      bindings: [
        EyeSelectionPageBinding(),
      ],
    ),
    GetPage(
      name: patientInformationPageScreen,
      page: () => PatientInformationPageScreen(),
      bindings: [
        PatientInformationPageBinding(),
      ],
    ),
    GetPage(
      name: signupPageScreen,
      page: () => SignupPageScreen(),
      bindings: [
        SignupPageBinding(),
      ],
    ),
    GetPage(
      name: loginPageScreen,
      page: () => LoginPageScreen(),
      bindings: [
        LoginPageBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginPageScreen(),
      bindings: [
        LoginPageBinding(),
      ],
    )
  ];
}
