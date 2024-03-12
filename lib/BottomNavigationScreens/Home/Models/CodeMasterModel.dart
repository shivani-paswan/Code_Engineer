class CodeMasterModel {
  int? prmcode;
  String? prmname;

  CodeMasterModel({this.prmcode, this.prmname});

  CodeMasterModel.fromJson(Map<String, dynamic> json) {
    prmcode = json['prmcode'];
    prmname = json['prmname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['prmcode'] = this.prmcode;
    data['prmname'] = this.prmname;
    return data;
  }
}
