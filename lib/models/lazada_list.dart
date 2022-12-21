
// class lazada_list {
//   int? code;
//   int? count;
//   String? message;
//   List<Data>? data;

//   lazada_list({this.code, this.count, this.message, this.data});

//   lazada_list.fromJson(Map<String, dynamic> json) {
//     code = json['code'];
//     count = json['count'];
//     message = json['message'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['code'] = this.code;
//     data['count'] = this.count;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   String? queryDt;
//   String? insertDt;
//   String? country;
//   String? merchantId;
//   String? createdAt;
//   String? updatedAt;
//   int? orderId;
//   int? orderItemId;
//   String? sku;
//   String? shopSku;
//   int? buyerId;
//   List<Null>? submissionHistory;
//   TplDemand? tplDemand;
//   TplDemand? tplShipment;
//   TplDemand? tplCancel;
//   TplDemand? tplReturn;

//   Data(
//       {this.queryDt,
//         this.insertDt,
//         this.country,
//         this.merchantId,
//         this.createdAt,
//         this.updatedAt,
//         this.orderId,
//         this.orderItemId,
//         this.sku,
//         this.shopSku,
//         this.buyerId,
//         this.submissionHistory,
//         this.tplDemand,
//         this.tplShipment,
//         this.tplCancel,
//         this.tplReturn});

//   Data.fromJson(Map<String, dynamic> json) {
//     queryDt = json['query_dt'];
//     insertDt = json['insert_dt'];
//     country = json['country'];
//     merchantId = json['merchant_id'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     orderId = json['order_id'];
//     orderItemId = json['order_item_id'];
//     sku = json['sku'];
//     shopSku = json['shop_sku'];
//     buyerId = json['buyer_id'];
//     // if (json['submission_history'] != null) {
//     //   submissionHistory = <Null>[];
//     //   json['submission_history'].forEach((v) {
//     //     submissionHistory!.add(new Null.fromJson(v));
//     //   });
//     // }
//     tplDemand = json['tpl_demand'] != null
//         ? new TplDemand.fromJson(json['tpl_demand'])
//         : null;
//     tplShipment = json['tpl_shipment'] != null
//         ? new TplDemand.fromJson(json['tpl_shipment'])
//         : null;
//     tplCancel = json['tpl_cancel'] != null
//         ? new TplDemand.fromJson(json['tpl_cancel'])
//         : null;
//     tplReturn = json['tpl_return'] != null
//         ? new TplDemand.fromJson(json['tpl_return'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['query_dt'] = this.queryDt;
//     data['insert_dt'] = this.insertDt;
//     data['country'] = this.country;
//     data['merchant_id'] = this.merchantId;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['order_id'] = this.orderId;
//     data['order_item_id'] = this.orderItemId;
//     data['sku'] = this.sku;
//     data['shop_sku'] = this.shopSku;
//     data['buyer_id'] = this.buyerId;
//     // if (this.submissionHistory != null) {
//     //   data['submission_history'] =
//     //       this.submissionHistory!.map((v) => v.toJson()).toList();
//     // }
//     if (this.tplDemand != null) {
//       data['tpl_demand'] = this.tplDemand!.toJson();
//     }
//     if (this.tplShipment != null) {
//       data['tpl_shipment'] = this.tplShipment!.toJson();
//     }
//     if (this.tplCancel != null) {
//       data['tpl_cancel'] = this.tplCancel!.toJson();
//     }
//     if (this.tplReturn != null) {
//       data['tpl_return'] = this.tplReturn!.toJson();
//     }
//     return data;
//   }
// }

// class TplDemand {
//   Null? payloadLink;
//   Null? payloadName;
//   Null? resentDt;
//   Null? response;
//   Null? responseMsg;
//   Null? sentDt;
//   Null? status;

//   TplDemand(
//       {this.payloadLink,
//         this.payloadName,
//         this.resentDt,
//         this.response,
//         this.responseMsg,
//         this.sentDt,
//         this.status});

//   TplDemand.fromJson(Map<String, dynamic> json) {
//     payloadLink = json['payload_link'];
//     payloadName = json['payload_name'];
//     resentDt = json['resent_dt'];
//     response = json['response'];
//     responseMsg = json['response_msg'];
//     sentDt = json['sent_dt'];
//     status = json['status'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['payload_link'] = this.payloadLink;
//     data['payload_name'] = this.payloadName;
//     data['resent_dt'] = this.resentDt;
//     data['response'] = this.response;
//     data['response_msg'] = this.responseMsg;
//     data['sent_dt'] = this.sentDt;
//     data['status'] = this.status;
//     return data;
//   }
// }