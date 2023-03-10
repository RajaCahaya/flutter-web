class Item {
  int? userId;
  int? id;
  String? title;
  String? body;


  Item(
      {
        this.userId,
        this.id,
        this.title,
        this.body,
        });

  Item.fromJson(Map< String , dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId.toString();
    data['id'] = this.id.toString();
    data['title'] = this.title;
    data['body'] = this.body;
   
    return data;
  }
}

