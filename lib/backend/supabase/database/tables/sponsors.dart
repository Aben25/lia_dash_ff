import '../database.dart';

class SponsorsTable extends SupabaseTable<SponsorsRow> {
  @override
  String get tableName => 'Sponsors';

  @override
  SponsorsRow createRow(Map<String, dynamic> data) => SponsorsRow(data);
}

class SponsorsRow extends SupabaseDataRow {
  SponsorsRow(super.data);

  @override
  SupabaseTable get table => SponsorsTable();

  String? get firstName => getField<String>('First name');
  set firstName(String? value) => setField<String>('First name', value);

  String? get lastName => getField<String>('Last name');
  set lastName(String? value) => setField<String>('Last name', value);

  String? get email => getField<String>('Email');
  set email(String? value) => setField<String>('Email', value);

  double? get amount => getField<double>('Amount');
  set amount(double? value) => setField<double>('Amount', value);

  String? get firstPaymentDateAmericaNewYork =>
      getField<String>('First payment date (America/New_York)');
  set firstPaymentDateAmericaNewYork(String? value) =>
      setField<String>('First payment date (America/New_York)', value);

  String? get lastPaymentDateAmericaNewYork =>
      getField<String>('Last payment date (America/New_York)');
  set lastPaymentDateAmericaNewYork(String? value) =>
      setField<String>('Last payment date (America/New_York)', value);

  String? get language => getField<String>('Language');
  set language(String? value) => setField<String>('Language', value);

  String? get address => getField<String>('Address');
  set address(String? value) => setField<String>('Address', value);

  String? get city => getField<String>('City');
  set city(String? value) => setField<String>('City', value);

  String? get postalCode => getField<String>('Postal code');
  set postalCode(String? value) => setField<String>('Postal code', value);

  String? get country => getField<String>('Country');
  set country(String? value) => setField<String>('Country', value);

  String? get region => getField<String>('Region');
  set region(String? value) => setField<String>('Region', value);

  String? get phone => getField<String>('Phone');
  set phone(String? value) => setField<String>('Phone', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get sponseeId => getField<String>('Sponsee_id');
  set sponseeId(String? value) => setField<String>('Sponsee_id', value);
}
