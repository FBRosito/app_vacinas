import 'package:flutter_test/flutter_test.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  const supabaseUrl = 'https://xksjfgsbqgcgpsehhvej.supabase.co';
  const supabaseAnonKey = 'sb_publishable_vAQeZDCYcgy3keHIIktEgQ_hDeaahLa';

  final sentinelEmail =
      'teste.${DateTime.now().millisecondsSinceEpoch}@exemplo.com';

  late SupabaseClient client;

  setUpAll(() async {
    await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
    );
    client = Supabase.instance.client;
  });

  test('conexão: insert na tabela users funciona com a anon key', () async {
    final response = await client.from('users').insert([
      {
        'email': sentinelEmail,
        'state': 'SP',
        'city': 'São Paulo',
        'occupation': 'Teste automatizado',
      },
    ]).execute();

    expect(response.error, isNull);
  });

  test('RLS: anon key não consegue ler a tabela users', () async {
    final insert = await client.from('users').insert([
      {
        'email': sentinelEmail,
        'state': 'SP',
        'city': 'São Paulo',
        'occupation': 'Teste automatizado',
      },
    ]).execute();
    expect(insert.error, isNull);

    final select = await client.from('users').select().execute();
    expect(select.error, isNull);

    final rows = (select.data as List<dynamic>?) ?? [];
    expect(
      rows.where((row) => row['email'] == sentinelEmail),
      isEmpty,
      reason: 'RLS desligado: a anon key conseguiu ler a tabela users',
    );
  });
}
