class AppStrings {
  static const String apiLink = "https://telegycare-s.onrender.com/api/";

  static const String apiConsultant = "${apiLink}consultants?populate=*";
  static const String apiPatient = "${apiLink}patients?populate=*";
  static const String geminiApiKey = 'AIzaSyBffGDO6HGB7s1JU0ZMP1SVb6JH0wBx8G0';

  static const String apiAppointmentsFilter =
      "${apiLink}appointments/?populate=*&filters[doctor][reg_Num][\$eq]=";
  static const String apiPatientsFilterID =
      "${apiPatient}&filters[reg_Num][\$eq]=";

  static const String apiPatentsFilterName =
      "${apiPatient}&filters[Name][\$containsi]=";

  static const String apiMedicalRecord = "${apiLink}medical-records?populate=*";

  static const String apiMedicalRecordFilterID =
      "${apiMedicalRecord}&filters[patient][reg_Num][\$eq]=";

  static const String apiMedicalRecordFilterName =
      "${apiMedicalRecord}&filters[patient][Name][\$containsi]=";

  static const String apiMedicalRecordFilterDoctor =
      "${apiMedicalRecord}&filters[\$or][0][doctor][reg_Num][\$eq]=";

  static const String apiMedicalRecordFilterConsultant =
      "&filters[\$or][1][consultant][reg_Num][\$eq]=";
}
