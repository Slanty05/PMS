// ignore_for_file: constant_identifier_names

// App Size String
import 'package:flutter/foundation.dart' show immutable;

@immutable
abstract class Constants {
  // UI Sizes For Padding And Margin
  static const double defaultPadding = 30.0;
  static const double defaultSize = 20.0;
  static const double defaulthalfpad = 15.0;
  static const double defaulthalfsize = 10.0;

  // CRUD
  static const String create = 'Create';
  static const String update = 'Update';
  static const String delete = 'Delete';
  static const String read = 'Read';

  // Key
  static const String currentUserKey = 'currentUser';

  // Common String And Pages Name In Project
  static const String appName = 'PMS';
  static const String admin = 'Admin';
  static const String attachment = 'Attachment';
  static const String camera = "Camera";
  static const String choose_Image = "Choose Image";
  static const String cost = "Cost";
  static const String cs = 'Customer Support';
  static const String customer = "Customer";
  static const String developers = 'Developers';
  static const String description = 'Description';
  static const String email = "E-mail";
  static const String endingdate = 'Ending Date';
  static const String faqs = 'FAQS';
  static const String feature = 'Feature';
  static const String feedBack = '& FeedBack';
  static const String forms = 'Forms';
  static const String gallery = 'Gallery';
  static const String home = 'Home';
  static const String hours = 'Hours';
  static const String login = "Login";
  static const String logOut = "LogOut";
  static const String managment = 'Managment';
  static const String members = 'Members';
  static const String module = 'Module';
  static const String notification = 'Notification';
  static const String phone = "Phone";
  static const String password = "Password";
  static const String profile = 'profile';
  static const String project = 'Project';
  static const String project_manager = 'Project Manager';
  static const String qae = 'QAE';
  static const String reporton = 'Reported On';
  static const String shift = 'Shift';
  static const String signin = 'Signin';
  static const String signup = "Signup";
  static const String startingdate = 'Starting Date';
  static const String status = 'Status';
  static const String submit = "Submit";
  static const String task = 'Task';
  static const String team_lead = 'Team Lead';
  static const String title = 'Title';
  static const String updateForm = 'Update Forms';
  static const String viewAll = 'View All';

  // Screens String

  // Splash Screen
  static const String splashTitle =
      'Create Free Website. \n Increase Your Skills \n And Earn Money';

  // Onboarding Screen
  static const String onboardingTitle1 = 'Hello World';
  static const String onboardingTitle2 = 'Build Awesome App';
  static const String onboardingTitle3 = 'Gained Skills And Money';
  static const String onboardingSubTitle1 =
      "Let's start your amazing journey with us ";
  static const String onboardingSubTitle2 =
      'Improve your coding by doing work professional';
  static const String onboardingSubTitle3 =
      'Every time you suffered make a great success';
  static const String onboardingCounter1 = '1/3';
  static const String onboardingCounter2 = '2/3';
  static const String onboardingCounter3 = '3/3';

  // Welcome Screen
  static const String welcomeTitle = 'Build Awesome App';
  static const String welcomeSubTitle =
      "Let's put your creativity on the development "
      "\n highway,craft app that everyone love";

  // Login And Signup Form String
  static const String formTitle = "Welcome To";
  static const String loginTitle1 = "Login Form";
  static const String signupTitle1 = "Signup Form";
  static const String forgetPass = "Forget Password";
  static const String endLogin = "Don't Have An Account?";
  static const String endSignup = "Already Have An Account?";
  static const String logGoogle = "Sign In With Google";

  // Forget Password
  static const String forgetPasswordTitle = "Make Selection!";
  static const String forgetPasswordSubtitle =
      "Select one of the option given below to reset password";
  static const String resetViaEmail = "Reset Via E-mail Verification";
  static const String next = "Next";
  static const String resetViaPhone = "Reset Via Phone Verification";

  // Forget Password Via Phone Text
  static const String forgetPhoneSubtitle =
      "Enter your Phone No# to receive OTP Code";

// Forget Password Via Email Text
  static const String forgetEmailSubtitle =
      "Enter your Email Address to receive OTP Code";

  // OTP Verification
  static const String OTPTitle = "CO\nDE";
  static const String OTPSubTitle = "Verification";
  static const String OTPMessage = "Enter the Verification code sent at ";

  // Home Screen
  static const String homeSearch = "Search....";
  static const String homeButton = "View All";
  static const String homeTopProject = "Top Project";
  static const String homeTopModule = "Top Module";
  static const String homeTopFeature = "Top Feature";
  static const String homeTopTask = "Top Task";

  // Profile Screen
  static const String editProfile = "Edit Profile";
  static const String profileSubheading = "User Email";

  // Member Screen
  static const String createUserAcc = "Create An Account!";
  static const String selection =
      "Select one of the option given below to Create An Account!";
  static const String userAcc = "User Account";
  static const String customerAcc = "Customer Account";

  // List Profile Screen
  static const String menu1 = "Setting";
  static const String menu2 = "Information";
  static const String menu3 = "Billing Details";
  static const String menu4 = "User Management";

  // Update Profile Screen
  static const String joined = "Joined";
  static const String joinedAt = "21 oct, 2000";

  //String In Project Forms Table

  // Assigment Table
  static const String assigmentform = "Assigment Form";
  static const String assigmentdate = "Assigment Date";
  static const String assigmentstatusform = "Assigment Status Form";
  static const String assigmentstatus = "Assigment Status";

  // Bug Reports Table
  static const String bugreportform = "Bug Report Form";
  static const String bugticket = "Bug Ticket Id";
  static const String bugdes = "Bug Description";
  static const String bugreportstatusform = "Bug Report Status Form";
  static const String bugstatus = "Bug Status";
  static const String bugreport = "Bug Report";

  // Customer Table
  static const String customerform = "Customer Form";
  static const String customername = "Customer Name";
  static const String customeremail = "Contact Person Email";
  static const String customerpname = "Contact Person Name";
  static const String customerphone = "Contact Person Phone";
  static const String customerwp = "Contact Person Whattsapp";
  static const String customerurl = "Customer Web URL";
  static const String customerlogo = "Customer Company Logo";

  // Features Table
  static const String featureform = "Feature Form";
  static const String featurestatusform = "Feature Status Form";
  static const String featuredoc = "Features Detail Document";

  // Module Table
  static const String moduleform = "Module Form";
  static const String modulestatusform = "Module Status Form";
  static const String moduledoc = "Module Detail Document";

  // Project Table
  static const String projectform = "Project Form";
  static const String projectstatusform = "Project Status Form";
  static const String projectdoc = "Project Detail Document";

  // Status Table
  static const String statusform = "Status Form";
  static const String statustype = "Status Type";
  static const String statusdescription = "Status Description";

  // Role Table
  static const String roleform = "Role Form";
  static const String roletitle = "Role Title";
  static const String roledes = "Role Description";

  // Task Table
  static const String taskform = "Task Form";
  static const String taskstatusform = "Task Status Form";
  static const String taskdetail = "Task Detail Document";
  static const String taskstatus = "Task Status";

  // UAT Table
  static const String uatform = "UAT Form";
  static const String uatstatusform = "UAT Status Form";
  static const String uat = "UAT";
  static const String uatstatus = "UAT Status";

  // User Table
  static const String userform = 'User Form';
  static const String username = "User Name";
  static const String useremail = "User Email";
  static const String userphone = "User Phone";
  static const String userpassword = "User Password";
  static const String userimage = "User Image";
  static const String usershift = "User Shift";
  static const String usercost = "User Cost";
}
