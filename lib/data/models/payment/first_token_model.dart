// To parse this JSON data, do
//
//     final firstTokenModel = firstTokenModelFromJson(jsonString);
//
// import 'dart:convert';
//
// FirstTokenModel firstTokenModelFromJson(String str) =>
//     FirstTokenModel.fromJson(json.decode(str));
//
// String firstTokenModelToJson(FirstTokenModel data) =>
//     json.encode(data.toJson());
//FirstTokenModel
class FirstTokenModel {
  FirstTokenModel({
    required this.token,
    required this.profile,
  });

  late final String token;
  late final Profile profile;

  factory FirstTokenModel.fromJson(Map<String, dynamic> json) =>
      FirstTokenModel(
        token: json["token"],
        profile: Profile.fromJson(json["profile"]),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "profile": profile.toJson(),
      };
}

//profile
class Profile {
  Profile({
    required this.id,
    required this.user,
    required this.createdAt,
    required this.active,
    required this.profileType,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
    required this.emailNotification,
    required this.orderRetrievalEndpoint,
    required this.deliveryUpdateEndpoint,
    required this.logoUrl,
    required this.isMobadra,
    required this.sector,
    required this.activationMethod,
    required this.signedUpThrough,
    required this.failedAttempts,
    required this.password,
    required this.customExportColumns,
    required this.serverIp,
    required this.username,
    required this.primaryPhoneNumber,
    required this.primaryPhoneVerified,
    required this.isTempPassword,
    required this.otp,
    required this.otpSentAt,
    required this.otpSentTo,
    required this.otpValidatedAt,
    required this.awbBanner,
    required this.emailBanner,
    required this.identificationNumber,
    required this.deliveryStatusCallback,
    required this.merchantExternalLink,
    required this.merchantStatus,
    required this.deactivatedByBank,
    required this.bankDeactivationReason,
    required this.bankMerchantStatus,
    required this.nationalId,
    required this.superAgent,
    required this.walletLimitProfile,
    required this.address,
    required this.commercialRegistration,
    required this.commercialRegistrationArea,
    required this.distributorCode,
    required this.distributorBranchCode,
    required this.allowTerminalOrderId,
    required this.allowEncryptionBypass,
    required this.walletPhoneNumber,
    required this.suspicious,
    required this.latitude,
    required this.longitude,
    required this.bankStaffs,
    required this.bankRejectionReason,
    required this.bankReceivedDocuments,
    required this.bankMerchantDigitalStatus,
    required this.bankDigitalRejectionReason,
    required this.filledBusinessData,
    required this.dayStartTime,
    required this.dayEndTime,
    required this.withholdTransfers,
    required this.smsSenderName,
    required this.withholdTransfersReason,
    required this.withholdTransfersNotes,
    required this.canBillDepositWithCard,
    required this.canTopupMerchants,
    required this.topupTransferId,
    required this.referralEligible,
    required this.paymobAppMerchant,
    required this.settlementFrequency,
    required this.dayOfTheWeek,
    required this.dayOfTheMonth,
    required this.allowTransactionNotifications,
    required this.allowTransferNotifications,
    required this.sallefnyAmountWhole,
    required this.sallefnyFeesWhole,
    required this.acqPartner,
    required this.salesOwner,
    required this.dom,
    required this.bankRelated,
    required this.permissions,
  });

  late final dynamic id;
  late final User user;
  late final DateTime createdAt;
  late final bool active;
  late final String profileType;
  late final List<String> phones;
  late final List<String> companyEmails;
  late final String companyName;
  late final String state;
  late final String country;
  late final String city;
  late final String postalCode;
  late final String street;
  late final bool emailNotification;
  late final dynamic orderRetrievalEndpoint;
  late final dynamic deliveryUpdateEndpoint;
  late final dynamic logoUrl;
  late final bool isMobadra;
  late final String sector;
  late final dynamic activationMethod;
  late final dynamic signedUpThrough;
  late final dynamic failedAttempts;
  late final dynamic password;
  late final List<dynamic> customExportColumns;
  late final List<dynamic> serverIp;
  late final dynamic username;
  late final String primaryPhoneNumber;
  late final bool primaryPhoneVerified;
  late final bool isTempPassword;
  late final String otp;
  late final DateTime otpSentAt;
  late final String otpSentTo;
  late final DateTime otpValidatedAt;
  late final dynamic awbBanner;
  late final dynamic emailBanner;
  late final dynamic identificationNumber;
  late final String deliveryStatusCallback;
  late final dynamic merchantExternalLink;
  late final dynamic merchantStatus;
  late final bool deactivatedByBank;
  late final dynamic bankDeactivationReason;
  late final dynamic bankMerchantStatus;
  late final dynamic nationalId;
  late final dynamic superAgent;
  late final dynamic walletLimitProfile;
  late final dynamic address;
  late final dynamic commercialRegistration;
  late final dynamic commercialRegistrationArea;
  late final dynamic distributorCode;
  late final dynamic distributorBranchCode;
  late final bool allowTerminalOrderId;
  late final bool allowEncryptionBypass;
  late final dynamic walletPhoneNumber;
  late final int suspicious;
  late final dynamic latitude;
  late final dynamic longitude;
  late final BankStaffs bankStaffs;
  late final dynamic bankRejectionReason;
  late final bool bankReceivedDocuments;
  late final dynamic bankMerchantDigitalStatus;
  late final dynamic bankDigitalRejectionReason;
  late final bool filledBusinessData;
  late final String dayStartTime;
  late final dynamic dayEndTime;
  late final bool withholdTransfers;
  late final String smsSenderName;
  late final dynamic withholdTransfersReason;
  late final dynamic withholdTransfersNotes;
  late final bool canBillDepositWithCard;
  late final bool canTopupMerchants;
  late final dynamic topupTransferId;
  late final bool referralEligible;
  late final bool paymobAppMerchant;
  late final dynamic settlementFrequency;
  late final dynamic dayOfTheWeek;
  late final dynamic dayOfTheMonth;
  late final bool allowTransactionNotifications;
  late final bool allowTransferNotifications;
  late final dynamic sallefnyAmountWhole;
  late final dynamic sallefnyFeesWhole;
  late final dynamic acqPartner;
  late final String salesOwner;
  late final dynamic dom;
  late final dynamic bankRelated;
  late final List<dynamic> permissions;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        user: User.fromJson(json["user"]),
        createdAt: DateTime.parse(json["created_at"]),
        active: json["active"],
        profileType: json["profile_type"],
        phones: List<String>.from(json["phones"].map((x) => x)),
        companyEmails: List<String>.from(json["company_emails"].map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
        emailNotification: json["email_notification"],
        orderRetrievalEndpoint: json["order_retrieval_endpoint"],
        deliveryUpdateEndpoint: json["delivery_update_endpoint"],
        logoUrl: json["logo_url"],
        isMobadra: json["is_mobadra"],
        sector: json["sector"],
        activationMethod: json["activation_method"],
        signedUpThrough: json["signed_up_through"],
        failedAttempts: json["failed_attempts"],
        password: json["password"],
        customExportColumns:
            List<dynamic>.from(json["custom_export_columns"].map((x) => x)),
        serverIp: List<dynamic>.from(json["server_IP"].map((x) => x)),
        username: json["username"],
        primaryPhoneNumber: json["primary_phone_number"],
        primaryPhoneVerified: json["primary_phone_verified"],
        isTempPassword: json["is_temp_password"],
        otp: json["otp"],
        otpSentAt: DateTime.parse(json["otp_sent_at"]),
        otpSentTo: json["otp_sent_to"],
        otpValidatedAt: DateTime.parse(json["otp_validated_at"]),
        awbBanner: json["awb_banner"],
        emailBanner: json["email_banner"],
        identificationNumber: json["identification_number"],
        deliveryStatusCallback: json["delivery_status_callback"],
        merchantExternalLink: json["merchant_external_link"],
        merchantStatus: json["merchant_status"],
        deactivatedByBank: json["deactivated_by_bank"],
        bankDeactivationReason: json["bank_deactivation_reason"],
        bankMerchantStatus: json["bank_merchant_status"],
        nationalId: json["national_id"],
        superAgent: json["super_agent"],
        walletLimitProfile: json["wallet_limit_profile"],
        address: json["address"],
        commercialRegistration: json["commercial_registration"],
        commercialRegistrationArea: json["commercial_registration_area"],
        distributorCode: json["distributor_code"],
        distributorBranchCode: json["distributor_branch_code"],
        allowTerminalOrderId: json["allow_terminal_order_id"],
        allowEncryptionBypass: json["allow_encryption_bypass"],
        walletPhoneNumber: json["wallet_phone_number"],
        suspicious: json["suspicious"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        bankStaffs: BankStaffs.fromJson(json["bank_staffs"]),
        bankRejectionReason: json["bank_rejection_reason"],
        bankReceivedDocuments: json["bank_received_documents"],
        bankMerchantDigitalStatus: json["bank_merchant_digital_status"],
        bankDigitalRejectionReason: json["bank_digital_rejection_reason"],
        filledBusinessData: json["filled_business_data"],
        dayStartTime: json["day_start_time"],
        dayEndTime: json["day_end_time"],
        withholdTransfers: json["withhold_transfers"],
        smsSenderName: json["sms_sender_name"],
        withholdTransfersReason: json["withhold_transfers_reason"],
        withholdTransfersNotes: json["withhold_transfers_notes"],
        canBillDepositWithCard: json["can_bill_deposit_with_card"],
        canTopupMerchants: json["can_topup_merchants"],
        topupTransferId: json["topup_transfer_id"],
        referralEligible: json["referral_eligible"],
        paymobAppMerchant: json["paymob_app_merchant"],
        settlementFrequency: json["settlement_frequency"],
        dayOfTheWeek: json["day_of_the_week"],
        dayOfTheMonth: json["day_of_the_month"],
        allowTransactionNotifications: json["allow_transaction_notifications"],
        allowTransferNotifications: json["allow_transfer_notifications"],
        sallefnyAmountWhole: json["sallefny_amount_whole"],
        sallefnyFeesWhole: json["sallefny_fees_whole"],
        acqPartner: json["acq_partner"],
        salesOwner: json["sales_owner"],
        dom: json["dom"],
        bankRelated: json["bank_related"],
        permissions: List<dynamic>.from(json["permissions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user.toJson(),
        "created_at": createdAt.toIso8601String(),
        "active": active,
        "profile_type": profileType,
        "phones": List<dynamic>.from(phones.map((x) => x)),
        "company_emails": List<dynamic>.from(companyEmails.map((x) => x)),
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
        "email_notification": emailNotification,
        "order_retrieval_endpoint": orderRetrievalEndpoint,
        "delivery_update_endpoint": deliveryUpdateEndpoint,
        "logo_url": logoUrl,
        "is_mobadra": isMobadra,
        "sector": sector,
        "activation_method": activationMethod,
        "signed_up_through": signedUpThrough,
        "failed_attempts": failedAttempts,
        "password": password,
        "custom_export_columns":
            List<dynamic>.from(customExportColumns.map((x) => x)),
        "server_IP": List<dynamic>.from(serverIp.map((x) => x)),
        "username": username,
        "primary_phone_number": primaryPhoneNumber,
        "primary_phone_verified": primaryPhoneVerified,
        "is_temp_password": isTempPassword,
        "otp": otp,
        "otp_sent_at": otpSentAt.toIso8601String(),
        "otp_sent_to": otpSentTo,
        "otp_validated_at": otpValidatedAt.toIso8601String(),
        "awb_banner": awbBanner,
        "email_banner": emailBanner,
        "identification_number": identificationNumber,
        "delivery_status_callback": deliveryStatusCallback,
        "merchant_external_link": merchantExternalLink,
        "merchant_status": merchantStatus,
        "deactivated_by_bank": deactivatedByBank,
        "bank_deactivation_reason": bankDeactivationReason,
        "bank_merchant_status": bankMerchantStatus,
        "national_id": nationalId,
        "super_agent": superAgent,
        "wallet_limit_profile": walletLimitProfile,
        "address": address,
        "commercial_registration": commercialRegistration,
        "commercial_registration_area": commercialRegistrationArea,
        "distributor_code": distributorCode,
        "distributor_branch_code": distributorBranchCode,
        "allow_terminal_order_id": allowTerminalOrderId,
        "allow_encryption_bypass": allowEncryptionBypass,
        "wallet_phone_number": walletPhoneNumber,
        "suspicious": suspicious,
        "latitude": latitude,
        "longitude": longitude,
        "bank_staffs": bankStaffs.toJson(),
        "bank_rejection_reason": bankRejectionReason,
        "bank_received_documents": bankReceivedDocuments,
        "bank_merchant_digital_status": bankMerchantDigitalStatus,
        "bank_digital_rejection_reason": bankDigitalRejectionReason,
        "filled_business_data": filledBusinessData,
        "day_start_time": dayStartTime,
        "day_end_time": dayEndTime,
        "withhold_transfers": withholdTransfers,
        "sms_sender_name": smsSenderName,
        "withhold_transfers_reason": withholdTransfersReason,
        "withhold_transfers_notes": withholdTransfersNotes,
        "can_bill_deposit_with_card": canBillDepositWithCard,
        "can_topup_merchants": canTopupMerchants,
        "topup_transfer_id": topupTransferId,
        "referral_eligible": referralEligible,
        "paymob_app_merchant": paymobAppMerchant,
        "settlement_frequency": settlementFrequency,
        "day_of_the_week": dayOfTheWeek,
        "day_of_the_month": dayOfTheMonth,
        "allow_transaction_notifications": allowTransactionNotifications,
        "allow_transfer_notifications": allowTransferNotifications,
        "sallefny_amount_whole": sallefnyAmountWhole,
        "sallefny_fees_whole": sallefnyFeesWhole,
        "acq_partner": acqPartner,
        "sales_owner": salesOwner,
        "dom": dom,
        "bank_related": bankRelated,
        "permissions": List<dynamic>.from(permissions.map((x) => x)),
      };
}

//BankStaffs
class BankStaffs {
  BankStaffs();

  factory BankStaffs.fromJson(Map<String, dynamic> json) => BankStaffs();

  Map<String, dynamic> toJson() => {};
}

//user
class User {
  User({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.dateJoined,
    required this.email,
    required this.isActive,
    required this.isStaff,
    required this.isSuperuser,
    required this.lastLogin,
    required this.groups,
    required this.userPermissions,
  });

  late final dynamic id;
  late final String username;
  late final String firstName;
  late final String lastName;
  late final DateTime dateJoined;
  late final String email;
  late final bool isActive;
  late final bool isStaff;
  late final bool isSuperuser;
  late final dynamic lastLogin;
  late final List<dynamic> groups;
  late final List<int> userPermissions;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        dateJoined: DateTime.parse(json["date_joined"]),
        email: json["email"],
        isActive: json["is_active"],
        isStaff: json["is_staff"],
        isSuperuser: json["is_superuser"],
        lastLogin: json["last_login"],
        groups: List<dynamic>.from(json["groups"].map((x) => x)),
        userPermissions: List<int>.from(json["user_permissions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "date_joined": dateJoined.toIso8601String(),
        "email": email,
        "is_active": isActive,
        "is_staff": isStaff,
        "is_superuser": isSuperuser,
        "last_login": lastLogin,
        "groups": List<dynamic>.from(groups.map((x) => x)),
        "user_permissions": List<dynamic>.from(userPermissions.map((x) => x)),
      };
}
