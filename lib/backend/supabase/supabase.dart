import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://qkehakucnmertrgjgqrk.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFrZWhha3Vjbm1lcnRyZ2pncXJrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjUxMjI1NjQsImV4cCI6MjA0MDY5ODU2NH0.EWVmvbKmxJfBNIZtqEIFhjlfdb2znlEyEXtL__m3PQA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
