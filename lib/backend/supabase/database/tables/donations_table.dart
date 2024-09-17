import '../database.dart';

class DonationsTableTable extends SupabaseTable<DonationsTableRow> {
  @override
  String get tableName => 'Donations Table';

  @override
  DonationsTableRow createRow(Map<String, dynamic> data) =>
      DonationsTableRow(data);
}

class DonationsTableRow extends SupabaseDataRow {
  DonationsTableRow(super.data);

  @override
  SupabaseTable get table => DonationsTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get donationDate => getField<DateTime>('donation_date');
  set donationDate(DateTime? value) =>
      setField<DateTime>('donation_date', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
