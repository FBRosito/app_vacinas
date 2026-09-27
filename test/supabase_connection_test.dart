import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  const supabaseUrl = 'https://xksjfgsbqgcgpsehhvej.supabase.co';
  const supabaseAnonKey = 'sb_publishable_vAQeZDCYcgy3keHIIktEgQ_hDeaahLa';

  final sentinelEmail =
      'teste.${DateTime.now().millisecondsSinceEpoch}@exemplo.com';

  late SupabaseClient client;

  setUpAll(() {
    client = SupabaseClient(supabaseUrl, supabaseAnonKey);
  });

  test('conexão: insert na tabela users funciona com a anon key', () async {
    await client.from('users').insert([
      {
        'email': sentinelEmail,
        'state': 'SP',
        'city': 'São Paulo',
        'occupation': 'Teste automatizado',
      },
    ]);
  });

  test('RLS: anon key não consegue ler a tabela users', () async {
    await client.from('users').insert([
      {
        'email': sentinelEmail,
        'state': 'SP',
        'city': 'São Paulo',
        'occupation': 'Teste automatizado',
      },
    ]);

    final rows = await client.from('users').select();
    expect(
      rows.where((row) => row['email'] == sentinelEmail),
      isEmpty,
      reason: 'RLS desligado: a anon key conseguiu ler a tabela users',
    );
  });
}
