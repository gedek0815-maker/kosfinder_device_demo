/// Konfigurasi cloud opsional; fitur kamera/GPS/draft tetap berjalan tanpa ini.
/// Nilai default diarahkan ke project Supabase pengayaan.
class CloudConfig {
  static const url = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://kffkooavwdswvjkbgisr.supabase.co',
  );

  static const publishableKey = String.fromEnvironment(
    'SUPABASE_PUBLISHABLE_KEY',
    defaultValue:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtmZmtvb2F2d2Rzd3Zqa2JnaXNyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTMxMjkwMzcsImV4cCI6MjEwODcwNTAzN30.aEnYSOWBtUhn7s0W2Y_OeGHfkztrZWiTqHLHTlbU0kk',
  );

  static bool get enabled => url.isNotEmpty && publishableKey.isNotEmpty;
}
