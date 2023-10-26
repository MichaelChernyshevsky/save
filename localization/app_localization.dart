// ignore_for_file: lines_longer_than_80_chars, prefer_constructors_over_static_methods

import 'package:imaigination_mobile/constants/exports/hidden_export.dart';
import 'package:imaigination_mobile/constants/localization/intl/messages_all_locales.dart';
import 'package:intl/intl.dart';

class AppLocalizations {
  static AppLocalizations? _current;

  static AppLocalizations get current {
    _current ??= AppLocalizations();
    return _current!;
  }

  static Future<AppLocalizations> load(Locale locale) {
    final name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      _current = instance;
      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations) ??
        AppLocalizations();
  }

  // hiden
  String get success => Intl.message('success');

  String get appName => Intl.message('Imaigination');

  String get empty => Intl.message('');
  // common
  String get commonContinue => Intl.message('Continue');
  String get commonGenerateButton => Intl.message('Generate');

  // splashScreen
  String get splashScreenWelcomeBack => Intl.message('Welcome Back');
  String get splashScreenAiImageGeneration =>
      Intl.message('Artificial Intelligence Image Generator');
  // splashScreen
  String get splashBring => Intl.message('Bring your ideas to life');

  //authScreens
  String get authResetPassword => Intl.message('Reset password');
  String get authForgotPassword => Intl.message('Forgot Password?');
  String get authEnterEmail => Intl.message(
        'Enter your email adress to change your password.You will receive an emailin order to change your password',
      );
  String get authPassword => Intl.message('Password');
  String get authPasswordConfirm => Intl.message('Confirm password');
  String get authFailed => Intl.message('Failed. Try again.');
  String get authPasswordTooShort =>
      Intl.message('Password is too short - should be 6 chars minimum');
  String get authPasswordConfirmMust =>
      Intl.message('Confirm password must match the password.');
  String get authInvaidCode =>
      Intl.message('Invalid code. Please check again.');
  String get authConfirm => Intl.message('Confirm');
  String get authAlreadyHave => Intl.message('Already have an account?  ');
  String get authLogIn => Intl.message('Log In');
  String get authInputCorrect =>
      Intl.message('Please input correct verification code.');
  String get authSendEmail => Intl.message('Send email');
  String get authEmailAddress => Intl.message('Email address');
  String get authErrorFindUser =>
      Intl.message("We can't find the user. Please try again.");
  String get authOrContinue => Intl.message('Or continue with ');
  String get authSignUp => Intl.message('Sign Up');
  String get authDontHaveAccount => Intl.message('Don’t have an account?  ');
  String get authMustEnter => Intl.message('You must enter valid Email ');
  String get authInputValidEmail => Intl.message('You must input valid email');
  String get authErrorCredential =>
      Intl.message('Your credential is not correct. Please try again!');
  String get authHaveAccount => Intl.message('Already have an account?  ');
  // widgets
  String get widgetsFeedbackImportant =>
      Intl.message('Your feedback is important to us!');
  String get widgetsFeedbackAnswers =>
      Intl.message('Your answers help us to make\nImagination better.');
  String get widgetsFeedbackFirstQuestion =>
      Intl.message(' How are you satisfied Imagination\n website?');
  String get widgetsFeedbackSecondQuestion =>
      Intl.message('Your answers help us to make\nImagination better.');
  String get widgetsFeedbackComment => Intl.message('Your comment');
  String get widgetsFeedbackSendButton => Intl.message('Send');
  // favouritePage
  String get favouriteTitle => Intl.message('Favorites');
  String get favouriteEmpty => Intl.message("You haven't liked any images yet");

  // generatePage
  String get generateTextExample =>
      Intl.message('Woody from toy story on times square');
  String get generateResults => Intl.message('Results');
  String get generateAutoStyle => Intl.message('Auto-select');
  String get generateSize_1_1 => Intl.message('1:1');
  String get generateSize_2_3 => Intl.message('2:3');
  String get generateSize_3_2 => Intl.message('3:2');
  String get generateDimentions => Intl.message('Dimensions');
  String get generateAddRandom => Intl.message('+ Add random');
  String get generateDescribe => Intl.message('Describe your image');
  String get generateControl => Intl.message('Control image with');
  String get generateImage => Intl.message('Image');
  String get generateSubs =>
      Intl.message('Please subscribe to\n get more pictures');

  String get generateSubscribe => Intl.message('Subscribe');
  String get generateEmpty => Intl.message('Your generations is empty');
  String get generateCreate =>
      Intl.message('Create similar images guided \nby your promt');
  String get generateChooseStyle => Intl.message('Choose a style of picture');

  // historyPgae
  String get historyTitle => Intl.message('History');
  String get historyEmpty => Intl.message('Your history is empty');

  // pictureScreen
  String get pictureStyle => Intl.message('Style');
  String get picturePixel => Intl.message('Pixel');
  String get pictureSize => Intl.message('Picture size');
  String get pictureTextEditorButton => Intl.message('Open text in editor');
  String get pictureImageEditorButton => Intl.message('Open image in editor');
  // searchPage
  String get searchResent => Intl.message('Recent searches');
  String get searchWithPoints => Intl.message('Search...');
  // settingsScreen
  String get settingsTitle => Intl.message('Settings');
  String get settingsPersonalInfo => Intl.message('Personal information');
  String get settingsSubscription => Intl.message('Subscription');
  String get settingsTermsAndCond => Intl.message('Terms and Conditions');
  String get settingsPrivacyPolicy => Intl.message('Privacy Policy');
  String get settingsLogout => Intl.message('Log out');
  String get settingsShare => Intl.message('Share Imaigination ');
  String get personalInfoFirstName => Intl.message('First name');
  String get personalInfoSecondNameName => Intl.message('Second name');
  String get personalInfoDelete => Intl.message('Delete account');
  String get personalInfoSave => Intl.message('Save');
  String get personalDeleteQuestion =>
      Intl.message('Are you sure that you want to\n delete account?');
  String get personalYes => Intl.message('Yes');
  String get personalNo => Intl.message('No');

  // appProvider
  String get subsCostM => Intl.message('17.99');
  String get subsPeriodM => Intl.message('Monthly');
  String get subsPerM => Intl.message('per mounth');
  String get subsCostA => Intl.message('169.99');
  String get subsPeriodA => Intl.message('Annually');
  String get subsPerA => Intl.message('per year');
  String get feedBack_1 => Intl.message('Not at all');
  String get feedBack_2 => Intl.message('Bad');
  String get feedBack_3 => Intl.message('Ok');
  String get feedBack_4 => Intl.message('Good');
  String get feedBack_5 => Intl.message('Great');
  // style
  String get styleGotica => Intl.message('Gothic');
  String get style3D => Intl.message('3D');
  String get styleFantasy => Intl.message('Fantasy');
  String get styleAnime => Intl.message('Anime');
  String get styleAbstract => Intl.message('Abstract');
  String get styleMagic => Intl.message('Magic');
  String get styleMarvel => Intl.message('Marvel');
  String get styleEpic => Intl.message('Epic');
  String get styleBlackandWhite => Intl.message('Black and White');
  String get stylePop => Intl.message('Pop');
  String get styleRetro => Intl.message('Retro');
  String get styleVintage => Intl.message('Vintage');
  String get styleCyberpunk => Intl.message('Cyberpunk');
  //
  String get privacyText1 => Intl.message(
        'At Imaigination, we value and prioritize the privacy of your data. We want to assure you that your data belongs to you, not us. This privacy policy outlines the following aspects: the types of data we collect and the reasons behind it, how we handle your data, and the rights you have in relation to your data. We want to emphasize that we never sell your data—this has never been our practice, and it never will be.\n\nPlease note that this policy applies to all the products developed and maintained by Imaigination.',
      );
  String get privacyTitle2 => Intl.message('Data Collection and Purpose');
  String get privacyText2 => Intl.message(
        "We follow the principle of collecting only the necessary information. Here's an overview of what data we collect and why:",
      );
  String get privacyTitle2_1 => Intl.message('Identity & Access:');
  String get privacyText2_1 => Intl.message(
        "When you sign up for our products, we ask for identifying information such as your name, email address, and possibly a company name. This information is required to personalize your account and to send you important updates, invoices, and relevant communications. We want to assure you that we never sell your personal information to third parties, and we won't use your name or company in marketing statements without your explicit permission.",
      );
  String get privacyTitle2_2 => Intl.message('Geolocation Data:');
  String get privacyText2_2 => Intl.message(
        'To ensure the security of your account, we log all access to accounts using the associated IP address. This helps us verify that no unauthorized access has occurred. We retain this login data for as long as your product account remains active. Additionally, we retain the full IP addresses used during product account sign-up to prevent spammy signups.',
      );
  String get privacyTitle2_3 =>
      Intl.message('Web Analytics and Website Interactions:');
  String get privacyText2_3 => Intl.message(
        'When you browse our marketing pages or applications, your browser automatically shares certain information, including your operating system, browser version, visited pages, page load timing, and the website that referred you. We track this information, along with specific link clicks, to gather statistical insights such as conversion rates and to test new designs. These web analytics data are temporarily tied to your IP address and user account (if applicable) when you are signed into our services.',
      );
  String get privacyTitle2_4 => Intl.message('Cookies and Do Not Track:');
  String get privacyText2_4 => Intl.message(
        'We use persistent first-party cookies to store preferences, enhance usability of our applications, and support internal analytics. Cookies are small text files that help your browser remember login information, site preferences, and other relevant data. You have the ability to adjust the retention settings of cookies in your browser. For more information about cookies, including managing and deleting them, please visit',
      );
  String get privacyPrefix2_4 => Intl.message(' www.allaboutcookies.org.');
  String get privacyAfterPrefix2_4 => Intl.message(
        'Currently, our sites and applications do not respond to Do Not Track signals sent by browser plugins.',
      );

  String get privacyTitle2_5 => Intl.message('Voluntary Correspondence:');
  String get privacyText2_5 => Intl.message(
        'When you reach out to us with inquiries or requests for assistance, we retain the correspondence, including your email address, to maintain a history of past communications that may be useful for future reference. Additionally, any information you voluntarily provide, such as survey responses, may be stored. On occasions when conducting customer interviews, we may ask for your explicit consent to record the conversation for future reference or use.',
      );
  String get privacyTitle2_6 => Intl.message('Information We Do Not Collect:');
  String get privacyText2_6 => Intl.message(
        'We do not collect any characteristics of protected classifications, including age, race, gender, religion, sexual orientation, gender identity, gender expression, or physical and mental abilities or disabilities. However, you may choose to provide such data voluntarily, such as including pronoun preferences in your email signature when communicating with our Support team.\n\nAt Imaigination, we are committed to responsible data collection practices and ensuring the privacy and security of your information.',
      );
  String get privacyTitle3 =>
      Intl.message('Accessing or Sharing Your Information');
  String get privacyText3 => Intl.message(
        'At Imaigination, our standard practice is to refrain from accessing your information. We prioritize the privacy and confidentiality of your data. However, there are limited circumstances in which we may access or share your information:',
      );
  String get privacyTitle3_1 =>
      Intl.message('Provision of Requested Products or Services:');
  String get privacyText3_1 => Intl.message(
        'We may access and process some or all of your personal information through third-party services that are essential for running our services and fulfilling the products or services you have requested. The extent of this access is limited to what is necessary to provide the requested functionalities. You can refer to our list of third-party services (subprocessors) to understand the specific services we use.',
      );
  String get privacyTitle3_2 =>
      Intl.message('Investigation and Prevention of Restricted Uses:');
  String get privacyText3_2 => Intl.message(
        "In situations where there are concerns or suspicions regarding restricted or prohibited use of our products or services, we may access a customer's account as a measure of last resort. We take the responsibility of protecting the privacy and safety of both our customers and those who report potential issues to us seriously. Throughout this process, we strive to maintain a balance between these responsibilities. If we discover any misuse of our products or services for restricted purposes, we will report such incidents to the relevant authorities as required by law.",
      );
  String get privacyText3_3 => Intl.message(
        'Please be assured that we exercise caution and adhere to legal and ethical standards when accessing or sharing your information in these exceptional circumstances. Your privacy and the security of your data remain our utmost priority.',
      );
  String get privacyTitle4 => Intl.message('Subprocessors');
  String get privacyText4 => Intl.message(
        'We rely on the services of various third-party subprocessors to operate imaigination.art, our service. These subprocessors assist us in handling different aspects of our operations, including subscriptions, payments processing, cloud services, analytics, and error reporting. Here is a list of the personal data subprocessors we engage with:',
      );
  String get privacyTitle4_1 => Intl.message('Amazon Web Services:');
  String get privacyText4_1 => Intl.message(
        'We employ Amazon Web Services (AWS) as a cloud services provider. They assist us in storing and managing data securely in their infrastructure.',
      );
  String get privacyTitle4_2 => Intl.message('Google Cloud Platform:');
  String get privacyText4_2 => Intl.message(
        'Google Cloud Platform (GCP) is another subprocessor we rely on for cloud services. GCP enables us to store, process, and analyze data efficiently.',
      );
  String get privacyTitle4_3 => Intl.message('MailTrap');
  String get privacyText4_3 => Intl.message(
        "An email testing and debugging service that helps us ensure the proper functioning and delivery of emails within our system. It allows us to simulate the sending and receiving of emails in a controlled environment, enabling us to identify and address any issues that may arise. When using MailTrap, certain personal data, such as email addresses and message content, may be processed. However, it's important to note that MailTrap is used solely for testing and debugging purposes, and we do not use it for any marketing or promotional activities. We have implemented appropriate measures to protect the privacy and security of your data when working with MailTrap. This includes ensuring that any personal data processed through MailTrap is handled in accordance with applicable data protection laws and regulations.",
      );
  String get privacyTitle4_4 => Intl.message('DigitalOcean');
  String get privacyText4_4 => Intl.message(
        "DigitalOcean is another subprocessor we rely on to support the infrastructure and hosting of imaigination.art. DigitalOcean is a cloud infrastructure provider that offers scalable and reliable cloud computing services. As part of our use of DigitalOcean, certain personal data may be processed. This may include data stored on servers hosted by DigitalOcean, such as user account information, images, and other related data. It's important to note that we take data security seriously and implement appropriate measures to protect the confidentiality and integrity of your information. DigitalOcean is selected based on its reputation for robust security practices and compliance with industry standards. They have implemented various technical and organizational measures to safeguard the data stored on their servers and maintain the availability and integrity of their services.",
      );
  String get privacyText5 => Intl.message(
        "Please note that while we engage these subprocessors to support our operations, we remain committed to protecting your personal data and ensuring that these subprocessors adhere to strict data protection standards. We have appropriate contractual agreements and security measures in place to safeguard your information when working with these subprocessors.\n\nWe regularly review our subprocessor relationships and may update this list from time to time. If you have any concerns about our subprocessors or their handling of your personal data, please contact us using the details provided in the 'Contact Us' section of this privacy policy.",
      );
  String get privacyTitle6 => Intl.message('User Rights');
  String get privacyText6 => Intl.message(
        "As a user of Imaigination's products and services, you have certain rights regarding your personal data. We are committed to upholding these rights and providing you with the necessary means to exercise them. Here are the rights you have:",
      );
  String get privacyTitle6_1 => Intl.message('Right to Access: ');
  String get privacyText6_1 => Intl.message(
        'You have the right to request access to the personal data we hold about you. This includes information about the types of data we collect, the purposes for which we process your data, and any third parties with whom we share your data.',
      );
  String get privacyTitle6_2 => Intl.message('Right to Rectification:');
  String get privacyText6_2 => Intl.message(
        'If you believe that any of the personal data we hold about you is inaccurate or incomplete, you have the right to request its correction or update. We encourage you to keep your account information accurate and up to date.',
      );
  String get privacyTitle6_3 => Intl.message('Right to Erasure:');
  String get privacyText6_3 => Intl.message(
        'In certain circumstances, you have the right to request the deletion of your personal data. This right applies when your data is no longer necessary for the purposes for which it was collected, when you withdraw your consent, when you object to the processing and there are no overriding legitimate grounds, or when the processing is unlawful.',
      );
  String get privacyTitle6_4 => Intl.message('Right to Restrict Processing:');
  String get privacyText6_4 => Intl.message(
        'You have the right to request the restriction of processing of your personal data. This means that we will store your data but not further process it, except in limited circumstances, such as when you give your consent or when it is necessary for legal purposes.',
      );
  String get privacyTitle6_5 => Intl.message('Right to Data Portability:');
  String get privacyText6_5 => Intl.message(
        'You have the right to receive a copy of your personal data in a structured, commonly used, and machine-readable format. You may also request us to transmit this data directly to another controller if technically feasible.',
      );
  String get privacyTitle6_6 => Intl.message('Right to Object: ');
  String get privacyText6_6 => Intl.message(
        'You have the right to object to the processing of your personal data when it is based on legitimate interests or for direct marketing purposes. We will carefully consider your objection and assess whether our legitimate grounds override your interests, rights, and freedoms.',
      );
  String get privacyTitle6_7 => Intl.message('Right to Lodge a Complaint:');
  String get privacyText6_7 => Intl.message(
        'If you believe that we have not adequately addressed your privacy concerns or have violated your rights, you have the right to lodge a complaint with your local data protection authority or supervisory authority.',
      );

  String get privacyText7 => Intl.message(
        "To exercise your rights or if you have any questions or concerns regarding the processing of your personal data, please contact us using the details provided in the 'Contact Us' section of this privacy policy. We will respond to your request and work to resolve any issues in a timely manner.\n\nPlease note that we may require additional information from you to verify your identity before processing certain requests related to your personal data.\n\nWe are committed to ensuring that your rights are respected and upheld in accordance with applicable data protection laws.\n\nRemember to adapt the wording and details of this section to align with your specific data processing practices and the rights granted under the data protection laws applicable to your jurisdiction.\n\nRegenerate response",
      );

  String get privacyTitle8 => Intl.message('Retention of Personal Data');
  String get privacyText8 => Intl.message(
        "At Imaigination, we retain your personal data for the duration required to provide the requested services and complete transactions, as well as to comply with legal obligations, resolve disputes, enforce agreements, and fulfill other legitimate and lawful business purposes. The specific retention periods may vary depending on factors such as the nature of the data, user expectations or consent, the data's sensitivity, the availability of automated deletion controls, and our legal or contractual obligations./n/nPlease note that as part of our standard operations, your information may be stored on computers located in countries outside of your home country. By providing us with your information, you consent to the transfer of this information as described. Regardless of where your information is stored, we will adhere to applicable laws and fulfill our commitments outlined in this policy.\n\nWe do not knowingly collect personal information from individuals under the age of 13. If you are under 13 years old, please refrain from providing any personal information to us. If you believe that your child under 13 has provided us with their personal information, please contact us immediately, and we will take the necessary steps to remove such information from our records.",
      );
  String get privacyTitle9 => Intl.message('Exercising Your Rights');
  String get privacyText9 => Intl.message(
        'To exercise the rights described above or if you have a question or concern, please contact us at',
      );
  String get privacyPrefix9 => Intl.message(' contact@imaigination.art ');
  String get privacyAfterPrefix9 => Intl.message(
        'and we will aim to address or resolve it. If we cannot, you have the right to lodge a complaint with your local data protection authority.',
      );

  String get privacyTitle10 => Intl.message('Updates the Policy');
  String get privacyText10 => Intl.message(
        'We may need to change this Privacy Statement and our notices from time to time. Any updates will be posted online with an effective date. Continued use of our services after the effective date of any changes constitutes acceptance of those changes.',
      );
  String get privacyTitle11 => Intl.message('Contact Us');
  String get privacyText11 =>
      Intl.message('You can get in touch by emailing us at ');
  String get privacyPrefix11 => Intl.message('contact@imaigination.art');

  String get termsText1 => Intl.message(
        'Welcome to Imaigination! These Terms and Conditions outline the rights and conditions governing your use of Imaigination images in both personal and commercial settings. Please carefully review the following details, as they may vary depending on your plan type.',
      );
  String get termsTitle2 => Intl.message('Your Rights Granted to Imaigination');
  String get termsText2 => Intl.message(
        'By using Imaigination, you grant Imaigination a perpetual, worldwide, non-exclusive, sublicensable, royalty-free, irrevocable copyright license to reproduce, create derivative works of, publicly display, and sublicense the images you create with Imaigination, as well as the prompts you input into Imaigination. In essence, we require complete rights to the content on Imaigination to ensure the proper functioning of our service and the ability to sublicense to other users, subject to the conditions outlined below.',
      );
  String get termsTitle3 => Intl.message('Personal Usage');
  String get termsText3 => Intl.message(
        'You are free to use Imaigination images for personal purposes at no cost. Personal use refers to the utilization of Imaigination images within non-monetized projects. For instance, this includes personal websites, videos without advertisements, or prints for personal display. Imaigination grants you a license to use these images under the Creative Commons Noncommercial 4.0 Attribution International License. You can find the specific details of this license ',
      );
  String get termsPrefix3 => Intl.message('here.');

  String get termsTitle4 => Intl.message('Commercial Usage');
  String get termsText4 => Intl.message(
        'To use Imaigination images for commercial purposes, you must have a paid Imaigination plan. Commercial use entails incorporating Imaigination images into monetized projects, such as company websites, videos with advertisements, or physical products.\n\nYou are not permitted to sell or sublicense Imaigination images on stock photo sites or other marketplaces unless you are the original creator of the image using the Imaigination image generator. While you can incorporate images found on Imaigination into commercial products, he direct right to sell the images is limited to the creator. Please note that upscaling an existing image on Imaigination does not qualify as creating that image, and the rights to it still belong to the original creator. This policy is intended to prevent confusion regarding multiple individuals selling the same image.\n\nImages created with Imaigination will be visible in Imaigination search results, and other Imaigination users may also use them in personal and commercial settings.\n\nIf you have any questions, please feel free to email us at ',
      );
  String get termsPrefix4 => Intl.message('contact@imaigination.art.');

  String get cancel => Intl.message('Cancel');
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;

  @override
  bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);
}
