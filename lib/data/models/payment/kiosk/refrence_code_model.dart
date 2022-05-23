// To parse this JSON data, do
//
//     final refCodeModel = refCodeModelFromJson(jsonString);
//
// import 'dart:convert';
//
// RefCodeModel RefCodeModelFromJson(String str) =>
//     RefCodeModel.fromJson(json.decode(str));
//
// String RefCodeModelToJson(RefCodeModel data) => json.encode(data.toJson());
//RefCodeModel
class RefCodeModel {
  RefCodeModel({
    required this.id,
    required this.pending,
    required this.amountCents,
    required this.success,
    required this.isAuth,
    required this.isCapture,
    required this.isStandalonePayment,
    required this.isVoided,
    required this.isRefunded,
    required this.is3DSecure,
    required this.integrationId,
    required this.profileId,
    required this.hasParentTransaction,
    required this.order,
    required this.createdAt,
    required this.transactionProcessedCallbackResponses,
    required this.currency,
    required this.sourceData,
    required this.apiSource,
    required this.terminalId,
    required this.merchantCommission,
    required this.installment,
    required this.isVoid,
    required this.isRefund,
    required this.data,
    required this.isHidden,
    required this.paymentKeyClaims,
    required this.errorOccured,
    required this.isLive,
    required this.otherEndpointReference,
    required this.refundedAmountCents,
    required this.sourceId,
    required this.isCaptured,
    required this.capturedAmount,
    required this.merchantStaffTag,
    required this.updatedAt,
    required this.owner,
    required this.parentTransaction,
  });

  int id;
  bool pending;
  int amountCents;
  bool success;
  bool isAuth;
  bool isCapture;
  bool isStandalonePayment;
  bool isVoided;
  bool isRefunded;
  bool is3DSecure;
  int integrationId;
  int profileId;
  bool hasParentTransaction;
  Order order;
  DateTime createdAt;
  List<dynamic> transactionProcessedCallbackResponses;
  String currency;
  SourceData sourceData;
  String apiSource;
  dynamic terminalId;
  int merchantCommission;
  dynamic installment;
  bool isVoid;
  bool isRefund;
  RefCodeModelData data;
  bool isHidden;
  PaymentKeyClaims paymentKeyClaims;
  bool errorOccured;
  bool isLive;
  dynamic otherEndpointReference;
  int refundedAmountCents;
  int sourceId;
  bool isCaptured;
  int capturedAmount;
  dynamic merchantStaffTag;
  DateTime updatedAt;
  int owner;
  dynamic parentTransaction;

  factory RefCodeModel.fromJson(Map<String, dynamic> json) => RefCodeModel(
        id: json["id"],
        pending: json["pending"],
        amountCents: json["amount_cents"],
        success: json["success"],
        isAuth: json["is_auth"],
        isCapture: json["is_capture"],
        isStandalonePayment: json["is_standalone_payment"],
        isVoided: json["is_voided"],
        isRefunded: json["is_refunded"],
        is3DSecure: json["is_3d_secure"],
        integrationId: json["integration_id"],
        profileId: json["profile_id"],
        hasParentTransaction: json["has_parent_transaction"],
        order: Order.fromJson(json["order"]),
        createdAt: DateTime.parse(json["created_at"]),
        transactionProcessedCallbackResponses: List<dynamic>.from(
            json["transaction_processed_callback_responses"].map((x) => x)),
        currency: json["currency"],
        sourceData: SourceData.fromJson(json["source_data"]),
        apiSource: json["api_source"],
        terminalId: json["terminal_id"],
        merchantCommission: json["merchant_commission"],
        installment: json["installment"],
        isVoid: json["is_void"],
        isRefund: json["is_refund"],
        data: RefCodeModelData.fromJson(json["data"]),
        isHidden: json["is_hidden"],
        paymentKeyClaims: PaymentKeyClaims.fromJson(json["payment_key_claims"]),
        errorOccured: json["error_occured"],
        isLive: json["is_live"],
        otherEndpointReference: json["other_endpoint_reference"],
        refundedAmountCents: json["refunded_amount_cents"],
        sourceId: json["source_id"],
        isCaptured: json["is_captured"],
        capturedAmount: json["captured_amount"],
        merchantStaffTag: json["merchant_staff_tag"],
        updatedAt: DateTime.parse(json["updated_at"]),
        owner: json["owner"],
        parentTransaction: json["parent_transaction"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "pending": pending,
        "amount_cents": amountCents,
        "success": success,
        "is_auth": isAuth,
        "is_capture": isCapture,
        "is_standalone_payment": isStandalonePayment,
        "is_voided": isVoided,
        "is_refunded": isRefunded,
        "is_3d_secure": is3DSecure,
        "integration_id": integrationId,
        "profile_id": profileId,
        "has_parent_transaction": hasParentTransaction,
        "order": order.toJson(),
        "created_at": createdAt.toIso8601String(),
        "transaction_processed_callback_responses": List<dynamic>.from(
            transactionProcessedCallbackResponses.map((x) => x)),
        "currency": currency,
        "source_data": sourceData.toJson(),
        "api_source": apiSource,
        "terminal_id": terminalId,
        "merchant_commission": merchantCommission,
        "installment": installment,
        "is_void": isVoid,
        "is_refund": isRefund,
        "data": data.toJson(),
        "is_hidden": isHidden,
        "payment_key_claims": paymentKeyClaims.toJson(),
        "error_occured": errorOccured,
        "is_live": isLive,
        "other_endpoint_reference": otherEndpointReference,
        "refunded_amount_cents": refundedAmountCents,
        "source_id": sourceId,
        "is_captured": isCaptured,
        "captured_amount": capturedAmount,
        "merchant_staff_tag": merchantStaffTag,
        "updated_at": updatedAt.toIso8601String(),
        "owner": owner,
        "parent_transaction": parentTransaction,
      };
}

//RefCodeModelData
class RefCodeModelData {
  RefCodeModelData({
    required this.rrn,
    required this.fromUser,
    required this.message,
    required this.cashoutAmount,
    required this.klass,
    required this.biller,
    required this.paidThrough,
    required this.otp,
    required this.txnResponseCode,
    required this.billReference,
    required this.gatewayIntegrationPk,
    required this.amount,
    required this.dueAmount,
    required this.ref,
    required this.aggTerminal,
  });

  dynamic rrn;
  dynamic fromUser;
  String message;
  dynamic cashoutAmount;
  String klass;
  dynamic biller;
  String paidThrough;
  String otp;
  String txnResponseCode;
  int billReference;
  int gatewayIntegrationPk;
  dynamic amount;
  int dueAmount;
  dynamic ref;
  dynamic aggTerminal;

  factory RefCodeModelData.fromJson(Map<String, dynamic> json) =>
      RefCodeModelData(
        rrn: json["rrn"],
        fromUser: json["from_user"],
        message: json["message"],
        cashoutAmount: json["cashout_amount"],
        klass: json["klass"],
        biller: json["biller"],
        paidThrough: json["paid_through"],
        otp: json["otp"],
        txnResponseCode: json["txn_response_code"],
        billReference: json["bill_reference"],
        gatewayIntegrationPk: json["gateway_integration_pk"],
        amount: json["amount"],
        dueAmount: json["due_amount"],
        ref: json["ref"],
        aggTerminal: json["agg_terminal"],
      );

  Map<String, dynamic> toJson() => {
        "rrn": rrn,
        "from_user": fromUser,
        "message": message,
        "cashout_amount": cashoutAmount,
        "klass": klass,
        "biller": biller,
        "paid_through": paidThrough,
        "otp": otp,
        "txn_response_code": txnResponseCode,
        "bill_reference": billReference,
        "gateway_integration_pk": gatewayIntegrationPk,
        "amount": amount,
        "due_amount": dueAmount,
        "ref": ref,
        "agg_terminal": aggTerminal,
      };
}

//Order
class Order {
  Order({
    required this.id,
    required this.createdAt,
    required this.deliveryNeeded,
    required this.merchant,
    required this.collector,
    required this.amountCents,
    required this.shippingData,
    required this.currency,
    required this.isPaymentLocked,
    required this.isReturn,
    required this.isCancel,
    required this.isReturned,
    required this.isCanceled,
    required this.merchantOrderId,
    required this.walletNotification,
    required this.paidAmountCents,
    required this.notifyUserWithEmail,
    required this.items,
    required this.orderUrl,
    required this.commissionFees,
    required this.deliveryFeesCents,
    required this.deliveryVatCents,
    required this.paymentMethod,
    required this.merchantStaffTag,
    required this.apiSource,
    required this.data,
  });

  late final int id;
  late final DateTime createdAt;
  late final bool deliveryNeeded;
  late final Merchant merchant;
  late final dynamic collector;
  late final int amountCents;
  late final IngData shippingData;
  late final String currency;
  late final bool isPaymentLocked;
  late final bool isReturn;
  late final bool isCancel;
  late final bool isReturned;
  late final bool isCanceled;
  late final String merchantOrderId;
  late final dynamic walletNotification;
  late final int paidAmountCents;
  late final bool notifyUserWithEmail;
  late final List<Item> items;
  late final String orderUrl;
  late final int commissionFees;
  late final int deliveryFeesCents;
  late final int deliveryVatCents;
  late final String paymentMethod;
  late final dynamic merchantStaffTag;
  late final String apiSource;
  late final OrderData data;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        deliveryNeeded: json["delivery_needed"],
        merchant: Merchant.fromJson(json["merchant"]),
        collector: json["collector"],
        amountCents: json["amount_cents"],
        shippingData: IngData.fromJson(json["shipping_data"]),
        currency: json["currency"],
        isPaymentLocked: json["is_payment_locked"],
        isReturn: json["is_return"],
        isCancel: json["is_cancel"],
        isReturned: json["is_returned"],
        isCanceled: json["is_canceled"],
        merchantOrderId: json["merchant_order_id"],
        walletNotification: json["wallet_notification"],
        paidAmountCents: json["paid_amount_cents"],
        notifyUserWithEmail: json["notify_user_with_email"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        orderUrl: json["order_url"],
        commissionFees: json["commission_fees"],
        deliveryFeesCents: json["delivery_fees_cents"],
        deliveryVatCents: json["delivery_vat_cents"],
        paymentMethod: json["payment_method"],
        merchantStaffTag: json["merchant_staff_tag"],
        apiSource: json["api_source"],
        data: OrderData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "delivery_needed": deliveryNeeded,
        "merchant": merchant.toJson(),
        "collector": collector,
        "amount_cents": amountCents,
        "shipping_data": shippingData.toJson(),
        "currency": currency,
        "is_payment_locked": isPaymentLocked,
        "is_return": isReturn,
        "is_cancel": isCancel,
        "is_returned": isReturned,
        "is_canceled": isCanceled,
        "merchant_order_id": merchantOrderId,
        "wallet_notification": walletNotification,
        "paid_amount_cents": paidAmountCents,
        "notify_user_with_email": notifyUserWithEmail,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "order_url": orderUrl,
        "commission_fees": commissionFees,
        "delivery_fees_cents": deliveryFeesCents,
        "delivery_vat_cents": deliveryVatCents,
        "payment_method": paymentMethod,
        "merchant_staff_tag": merchantStaffTag,
        "api_source": apiSource,
        "data": data.toJson(),
      };
}

//OrderData
class OrderData {
  OrderData();

  factory OrderData.fromJson(Map<String, dynamic> json) => OrderData();

  Map<String, dynamic> toJson() => {};
}

//Item
class Item {
  Item({
    required this.name,
    required this.description,
    required this.amountCents,
    required this.quantity,
  });

  String name;
  String description;
  int amountCents;
  int quantity;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        description: json["description"],
        amountCents: json["amount_cents"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "amount_cents": amountCents,
        "quantity": quantity,
      };
}

//Merchant
class Merchant {
  Merchant({
    required this.id,
    required this.createdAt,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
  });

  late final int id;
  late final DateTime createdAt;
  late final List<String> phones;
  late final List<String> companyEmails;
  late final String companyName;
  late final String state;
  late final String country;
  late final String city;
  late final String postalCode;
  late final String street;

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        phones: List<String>.from(json["phones"].map((x) => x)),
        companyEmails: List<String>.from(json["company_emails"].map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "phones": List<dynamic>.from(phones.map((x) => x)),
        "company_emails": List<dynamic>.from(companyEmails.map((x) => x)),
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
      };
}

//IngData
class IngData {
  IngData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.building,
    required this.floor,
    required this.apartment,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.phoneNumber,
    required this.postalCode,
    required this.extraDescription,
    required this.shippingMethod,
    required this.orderId,
    required this.order,
  });

  late final int id;
  late final String firstName;
  late final String lastName;
  late final String street;
  late final String building;
  late final String floor;
  late final String apartment;
  late final String city;
  late final String state;
  late final String country;
  late final String email;
  late final String phoneNumber;
  late final String postalCode;
  late final String extraDescription;
  late final String shippingMethod;
  late final int orderId;
  late final int order;

  factory IngData.fromJson(Map<String, dynamic> json) => IngData(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        street: json["street"],
        building: json["building"],
        floor: json["floor"],
        apartment: json["apartment"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        postalCode: json["postal_code"],
        extraDescription: json["extra_description"],
        shippingMethod: json["shipping_method"],
        orderId: json["order_id"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "street": street,
        "building": building,
        "floor": floor,
        "apartment": apartment,
        "city": city,
        "state": state,
        "country": country,
        "email": email,
        "phone_number": phoneNumber,
        "postal_code": postalCode,
        "extra_description": extraDescription,
        "shipping_method": shippingMethod,
        "order_id": orderId,
        "order": order,
      };
}

//PaymentKeyClaims
class PaymentKeyClaims {
  PaymentKeyClaims({
    required this.integrationId,
    required this.orderId,
    required this.amountCents,
    required this.lockOrderWhenPaid,
    required this.userId,
    required this.currency,
    required this.exp,
    required this.pmkIp,
    required this.billingData,
  });

  late final int integrationId;
  late final int orderId;
  late final int amountCents;
  late final bool lockOrderWhenPaid;
  late final int userId;
  late final String currency;
  late final int exp;
  late final String pmkIp;
  late final IngData billingData;

  factory PaymentKeyClaims.fromJson(Map<String, dynamic> json) =>
      PaymentKeyClaims(
        integrationId: json["integration_id"],
        orderId: json["order_id"],
        amountCents: json["amount_cents"],
        lockOrderWhenPaid: json["lock_order_when_paid"],
        userId: json["user_id"],
        currency: json["currency"],
        exp: json["exp"],
        pmkIp: json["pmk_ip"],
        billingData: IngData.fromJson(json["billing_data"]),
      );

  Map<String, dynamic> toJson() => {
        "integration_id": integrationId,
        "order_id": orderId,
        "amount_cents": amountCents,
        "lock_order_when_paid": lockOrderWhenPaid,
        "user_id": userId,
        "currency": currency,
        "exp": exp,
        "pmk_ip": pmkIp,
        "billing_data": billingData.toJson(),
      };
}

//SourceData
class SourceData {
  SourceData({
    required this.pan,
    required this.type,
    required this.subType,
  });

  late final String pan;
  late final String type;
  late final String subType;

  factory SourceData.fromJson(Map<String, dynamic> json) => SourceData(
        pan: json["pan"],
        type: json["type"],
        subType: json["sub_type"],
      );

  Map<String, dynamic> toJson() => {
        "pan": pan,
        "type": type,
        "sub_type": subType,
      };
}
