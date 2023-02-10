class NotesModel {
  int _id;
  String _title;
  String _description;
  String _date;

  NotesModel(this._id, this._title, this._description, this._date);

  NotesModel.withId(this._id, this._title, this._description, this._date);

  int get id => _id;

  String get title => _title;

  String get description => _description;

  String get date => _date;

  set title(String value) {
    _title = value;
  }

  set description(String value) {
    _description = value;
  }

  set date(String value) {
    _date = value;
  }

  // Convert the NoteModel Object into Map Object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }

    map['title'] = _title;
    map['description'] = _description;
    map['date'] = _description;

    return map;
  }

  // Extract a noteModel Object From Map Object
  fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._date = map['date'];
  }
}


