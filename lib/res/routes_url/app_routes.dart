import 'package:flutter/foundation.dart' show immutable;
import 'package:get/get.dart';
import 'package:pms/view/authentication/forget_password_screen/forget_passward_otp/otp_screen.dart';
import 'package:pms/view/authentication/forget_password_screen/forget_password_mail/forget_password_mail.dart';
import 'package:pms/view/authentication/forget_password_screen/forget_password_phone/forget_password_phone.dart';
import 'package:pms/view/authentication/splash_screen/splash_screen.dart';
import 'package:pms/view/authentication/welcome_screen/welcome_screen.dart';
import 'package:pms/view/bottom_Navigation_Bar/bottom_navigation_bar.dart';
import 'package:pms/view/screens/forms/create_forms_screens/assigment/assigment_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/assigment_status/assigment_status_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/bug_report/bug_report_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/bug_report_status/bug_report_status_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/customer/customer_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/feature/features_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/feature_status/features_status_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/module/module_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/module_status/module_status_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/project/project_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/project_status/project_status_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/role/role_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/status/status_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/task/task_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/task_status/task_status_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/uat/uat_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/uat_status/uat_status_widget.dart';
import 'package:pms/view/screens/forms/create_forms_screens/user/user_widget.dart';
import 'package:pms/view/screens/forms/forms.dart';
import 'package:pms/view/screens/forms/read_forms_screens/bug_report/read_bug_report.dart';
import 'package:pms/view/screens/forms/read_forms_screens/feature/read_feature.dart';
import 'package:pms/view/screens/forms/read_forms_screens/module/read_module.dart';
import 'package:pms/view/screens/forms/read_forms_screens/project/read_project.dart';
import 'package:pms/view/screens/forms/read_forms_screens/task/read_task.dart';
import 'package:pms/view/screens/home_screen/home_screen.dart';
import 'package:pms/view/authentication/login_screen/login_screen.dart';
import 'package:pms/view/authentication/signup_screen/signup_screen.dart';
import 'package:pms/view/screens/members_screen/members_screen.dart';
import 'package:pms/view/screens/notification_screen/notification_screen.dart';
import 'package:pms/view/screens/profile_screen/edit_profile.dart';
import 'package:pms/view/screens/profile_screen/profile_screen.dart';
import 'app_routes_name.dart';

@immutable
abstract class AppRouter {
  static List<GetPage> getAppPages() => <GetPage>[
        GetPage(
          name: RouteName.Assigment_Form,
          page: () => const Assigment_Form(),
        ),
        GetPage(
          name: RouteName.Assigment_Status_Form,
          page: () => const Assigment_Status_Form(),
        ),
        GetPage(
          name: RouteName.Bug_Report_Form,
          page: () => const Bug_Report_Form(),
        ),
        GetPage(
          name: RouteName.Read_Bug_Report,
          page: () => const Read_Bug_Report(),
        ),
        GetPage(
          name: RouteName.Bug_Report_Status_Form,
          page: () => const Bug_Report_Status_Form(),
        ),
        GetPage(
          name: RouteName.Customer_Form,
          page: () => const Customer_Form(),
        ),
        GetPage(
          name: RouteName.Edit_Profile,
          page: () => const Edit_Profile(),
        ),
        GetPage(
          name: RouteName.Feature_Form,
          page: () => const Feature_Form(),
        ),
        GetPage(
          name: RouteName.Read_Feature,
          page: () => const Read_Feature(),
        ),
        GetPage(
          name: RouteName.Feature_Status_Form,
          page: () => const Feature_Status_Form(),
        ),
        GetPage(
          name: RouteName.Forget_Password_Phone,
          page: () => const Forget_Password_Phone(),
        ),
        GetPage(
          name: RouteName.Forget_Password_Mail,
          page: () => const Forget_Password_Mail(),
        ),
        GetPage(
          name: RouteName.Forms_Screen,
          page: () => const Forms_Screen(),
        ),
        GetPage(
          name: RouteName.Home_Screen,
          page: () => const Home_Screen(),
        ),
        GetPage(
          name: RouteName.Login_Screen,
          page: () => const Login_Screen(),
        ),
        GetPage(
          name: RouteName.Members_Screen,
          page: () => const Members_Screen(),
        ),
        GetPage(
          name: RouteName.Module_Form,
          page: () => const Module_Form(),
        ),
        GetPage(
          name: RouteName.Read_Module,
          page: () => const Read_Module(),
        ),
        GetPage(
          name: RouteName.Module_Status_Form,
          page: () => const Module_Status_Form(),
        ),
        GetPage(
          name: RouteName.NavBar_Screen,
          page: () => const NavBar_Screen(),
        ),
        GetPage(
          name: RouteName.Notification_Screen,
          page: () => const Notification_Screen(),
        ),
        GetPage(
          name: RouteName.OTP_Screen,
          page: () => OTP_Screen(),
        ),
        GetPage(
          name: RouteName.Profile_Screen,
          page: () => const Profile_Screen(),
        ),
        GetPage(
          name: RouteName.Project_Form,
          page: () => const Project_Form(),
        ),
        GetPage(
          name: RouteName.Read_Project,
          page: () => const Read_Project(),
        ),
        GetPage(
          name: RouteName.Project_Status_Form,
          page: () => const Project_Status_Form(),
        ),
        GetPage(
          name: RouteName.Role_Form,
          page: () => const Role_Form(),
        ),
        GetPage(
          name: RouteName.Signup_Screen,
          page: () => const Signup_Screen(),
        ),
        GetPage(
          name: RouteName.Splash_Screen,
          page: () => const Splash_Screen(),
        ),
        GetPage(
          name: RouteName.Status_Form,
          page: () => const Status_Form(),
        ),
        GetPage(
          name: RouteName.Task_Form,
          page: () => const Task_Form(),
        ),
        GetPage(
          name: RouteName.Read_Task,
          page: () => const Read_Task(),
        ),
        GetPage(
          name: RouteName.Task_Status_Form,
          page: () => const Task_Status_Form(),
        ),
        GetPage(
          name: RouteName.UAT_Form,
          page: () => const UAT_Form(),
        ),
        GetPage(
          name: RouteName.UAT_Status_Form,
          page: () => const UAT_Status_Form(),
        ),
        GetPage(
          name: RouteName.User_Form,
          page: () => const User_Form(),
        ),
        GetPage(
          name: RouteName.Welcome_Screen,
          page: () => const Welcome_Screen(),
        ),
      ];
}
