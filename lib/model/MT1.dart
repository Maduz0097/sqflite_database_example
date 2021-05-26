final String tableMT1 = 'MT1';

class MT1Fields {
  static final List<String> values = [
    /// Add all fields
    id,
    MT1_R_Winding_Temp,
    MT1_R_Oil_Temp,
    MT1_R_Core_1_Temp,
    MT1_R_Core_2_Temp,
    MT1_Y_Winding_Temp,
    MT1_Y_Oil_Temp,
    MT1_Y_Core_1_Temp,
    MT1_Y_Core_2_Temp,
    MT1_B_Winding_Temp,
    MT1_B_Oil_Temp,
    MT1_B_Core_1_Temp,
    MT1_B_Core_2_Temp,
    time
  ];

  static final String id = '_id';

  static final String MT1_R_Winding_Temp = 'MT1_R_Winding_Temp';
  static final String MT1_R_Oil_Temp = 'MT1_R_Oil_Temp';
  static final String MT1_R_Core_1_Temp = 'MT1_R_Core_1_Temp';
  static final String MT1_R_Core_2_Temp = 'MT1_R_Core_2_Temp';
  static final String MT1_Y_Winding_Temp = 'MT1_Y_Winding_Temp';
  static final String MT1_Y_Oil_Temp = 'MT1_Y_Oil_Temp';
  static final String MT1_Y_Core_1_Temp = 'MT1_Y_Core_1_Temp';
  static final String MT1_Y_Core_2_Temp = 'MT1_Y_Core_2_Temp';
  static final String MT1_B_Winding_Temp = 'MT1_B_Winding_Temp';
  static final String MT1_B_Oil_Temp = 'MT1_B_Oil_Temp';
  static final String MT1_B_Core_1_Temp = 'MT1_B_Core_1_Temp';
  static final String MT1_B_Core_2_Temp = 'MT1_B_Core_2_Temp';
  static final String time = 'time';
}

class MT1 {
  final int? id;
  final String MT1_R_Winding_Temp;
  final String MT1_R_Oil_Temp;
  final String MT1_R_Core_1_Temp;
  final String MT1_R_Core_2_Temp;
  final String MT1_Y_Winding_Temp;
  final String MT1_Y_Oil_Temp;
  final String MT1_Y_Core_1_Temp;
  final String MT1_Y_Core_2_Temp;
  final String MT1_B_Winding_Temp;
  final String MT1_B_Oil_Temp;
  final String MT1_B_Core_1_Temp;
  final String MT1_B_Core_2_Temp;
  final DateTime createdTime;

  const MT1({
    this.id,
    required this.MT1_R_Winding_Temp,
    required this.MT1_R_Oil_Temp,
    required this.MT1_R_Core_1_Temp,
    required this.MT1_R_Core_2_Temp,
    required this.MT1_Y_Winding_Temp,
    required this.MT1_Y_Oil_Temp,
    required this.MT1_Y_Core_1_Temp,
    required this.MT1_Y_Core_2_Temp,
    required this.MT1_B_Winding_Temp,
    required this.MT1_B_Oil_Temp,
    required this.MT1_B_Core_1_Temp,
    required this.MT1_B_Core_2_Temp,
    required this.createdTime,
  });

  MT1 copy({
    int? id,
    String? MT1_R_Winding_Temp,
    String? MT1_R_Oil_Temp,
    String? MT1_R_Core_1_Temp,
    String? MT1_R_Core_2_Temp,
    String? MT1_Y_Winding_Temp,
    String? MT1_Y_Oil_Temp,
    String? MT1_Y_Core_1_Temp,
    String? MT1_Y_Core_2_Temp,
    String? MT1_B_Winding_Temp,
    String? MT1_B_Oil_Temp,
    String? MT1_B_Core_1_Temp,
    String? MT1_B_Core_2_Temp,
    DateTime? createdTime,
  }) =>
      MT1(
        id: id ?? this.id,
        MT1_R_Winding_Temp: MT1_R_Winding_Temp ?? this.MT1_R_Winding_Temp,
        MT1_R_Oil_Temp: MT1_R_Oil_Temp ?? this.MT1_R_Oil_Temp,
        MT1_R_Core_1_Temp: MT1_R_Core_1_Temp ?? this.MT1_R_Core_1_Temp,
        MT1_R_Core_2_Temp: MT1_R_Core_2_Temp ?? this.MT1_R_Core_2_Temp,
        MT1_Y_Winding_Temp: MT1_Y_Winding_Temp ?? this.MT1_Y_Winding_Temp,
        MT1_Y_Oil_Temp: MT1_Y_Oil_Temp ?? this.MT1_Y_Oil_Temp,
        MT1_Y_Core_1_Temp: MT1_Y_Core_1_Temp ?? this.MT1_Y_Core_1_Temp,
        MT1_Y_Core_2_Temp: MT1_Y_Core_2_Temp ?? this.MT1_Y_Core_2_Temp,
        MT1_B_Winding_Temp: MT1_B_Winding_Temp ?? this.MT1_B_Winding_Temp,
        MT1_B_Oil_Temp: MT1_B_Oil_Temp ?? this.MT1_B_Oil_Temp,
        MT1_B_Core_1_Temp: MT1_B_Core_1_Temp ?? this.MT1_B_Core_1_Temp,
        MT1_B_Core_2_Temp: MT1_B_Core_2_Temp ?? this.MT1_B_Core_2_Temp,
        createdTime: createdTime ?? this.createdTime,
      );

  static MT1 fromJson(Map<String, Object?> json) => MT1(
        id: json[MT1Fields.id] as int?,
        MT1_R_Winding_Temp: json[MT1Fields.MT1_R_Winding_Temp] as String,
        MT1_R_Oil_Temp: json[MT1Fields.MT1_R_Oil_Temp] as String,
        MT1_R_Core_1_Temp: json[MT1Fields.MT1_R_Core_1_Temp] as String,
        MT1_R_Core_2_Temp: json[MT1Fields.MT1_R_Core_2_Temp] as String,
        MT1_Y_Winding_Temp: json[MT1Fields.MT1_Y_Winding_Temp] as String,
        MT1_Y_Oil_Temp: json[MT1Fields.MT1_Y_Oil_Temp] as String,
        MT1_Y_Core_1_Temp: json[MT1Fields.MT1_Y_Core_1_Temp] as String,
        MT1_Y_Core_2_Temp: json[MT1Fields.MT1_Y_Core_2_Temp] as String,
        MT1_B_Winding_Temp: json[MT1Fields.MT1_B_Winding_Temp] as String,
        MT1_B_Oil_Temp: json[MT1Fields.MT1_B_Oil_Temp] as String,
        MT1_B_Core_1_Temp: json[MT1Fields.MT1_B_Core_1_Temp] as String,
        MT1_B_Core_2_Temp: json[MT1Fields.MT1_B_Core_2_Temp] as String,
        //description: json[MT1Fields.description] as String,
        createdTime: DateTime.parse(json[MT1Fields.time] as String),
      );

  Map<String, Object?> toJson() => {
        MT1Fields.id: id,
        MT1Fields.MT1_R_Winding_Temp: MT1_R_Winding_Temp,
        MT1Fields.MT1_R_Oil_Temp: MT1_R_Oil_Temp,
        MT1Fields.MT1_R_Core_1_Temp: MT1_R_Core_1_Temp,
        MT1Fields.MT1_R_Core_2_Temp: MT1_R_Core_2_Temp,
        MT1Fields.MT1_Y_Winding_Temp: MT1_Y_Winding_Temp,
        MT1Fields.MT1_Y_Oil_Temp: MT1_Y_Oil_Temp,
        MT1Fields.MT1_Y_Core_1_Temp: MT1_Y_Core_1_Temp,
        MT1Fields.MT1_Y_Core_2_Temp: MT1_Y_Core_2_Temp,
        MT1Fields.MT1_B_Winding_Temp: MT1_B_Winding_Temp,
        MT1Fields.MT1_B_Oil_Temp: MT1_B_Oil_Temp,
        MT1Fields.MT1_B_Core_1_Temp: MT1_B_Core_1_Temp,
        MT1Fields.MT1_B_Core_2_Temp: MT1_B_Core_2_Temp,
        MT1Fields.time: createdTime.toIso8601String(),
      };
}
