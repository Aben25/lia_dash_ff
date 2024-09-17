import '../database.dart';

class SponseesTable extends SupabaseTable<SponseesRow> {
  @override
  String get tableName => 'Sponsees';

  @override
  SponseesRow createRow(Map<String, dynamic> data) => SponseesRow(data);
}

class SponseesRow extends SupabaseDataRow {
  SponseesRow(super.data);

  @override
  SupabaseTable get table => SponseesTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firstName => getField<String>('First Name');
  set firstName(String? value) => setField<String>('First Name', value);

  String? get lastName => getField<String>('Last Name');
  set lastName(String? value) => setField<String>('Last Name', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get grade => getField<String>('grade');
  set grade(String? value) => setField<String>('grade', value);

  String? get aspiration => getField<String>('aspiration');
  set aspiration(String? value) => setField<String>('aspiration', value);

  String? get bio => getField<String>('bio');
  set bio(String? value) => setField<String>('bio', value);

  String? get document => getField<String>('document');
  set document(String? value) => setField<String>('document', value);

  DateTime? get bod => getField<DateTime>('bod');
  set bod(DateTime? value) => setField<DateTime>('bod', value);

  String? get profile => getField<String>('profile');
  set profile(String? value) => setField<String>('profile', value);

  String? get parentInfo => getField<String>('parent_info');
  set parentInfo(String? value) => setField<String>('parent_info', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get sponsorId => getField<String>('sponsor_id');
  set sponsorId(String? value) => setField<String>('sponsor_id', value);
}
