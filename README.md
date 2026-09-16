# Sala de Vacinas

Aplicativo Flutter em português voltado a profissionais de enfermagem, funcionando como
ferramenta de referência rápida sobre vacinação: calendários vacinais, eventos adversos pós-
vacinais (EAPV), imunobiológicos e casos clínicos.

A maior parte do conteúdo é entregue como PDFs empacotados em `assets/`, exibidos dentro do
app via `syncfusion_flutter_pdfviewer` — não como telas nativas com dados estruturados.

## Stack

- **Flutter / Dart** — SDK constraint antiga (`>=2.12.0 <3.0.0`). Várias APIs usadas no código
  (ex.: `ElevatedButton.styleFrom(primary: ...)`, chamadas `.execute()` do `supabase_flutter`
  v1) são dessa época. Atualizar o SDK e as dependências é uma mudança grande e deliberada —
  não faça isso de forma incidental enquanto mexe em outra coisa.
- **Supabase** (`supabase_flutter`) como backend, inicializado uma única vez em `lib/main.dart`.
- **Syncfusion PDF Viewer** para exibir os PDFs de referência dentro do app.

## Rodando o projeto

```bash
flutter pub get
flutter run            # escolha um dispositivo/emulador, ou -d chrome para web
```

Outros comandos úteis:

```bash
flutter analyze         # não há analysis_options.yaml; roda só com os lints padrão do Flutter
flutter test            # test/widget_test.dart ainda é o template padrão e vai FALHAR
flutter build apk       # ou build ios / build web
```

### Sobre `flutter test`

O único teste existente é o template gerado pelo `flutter create`, que procura um contador que
não existe em `MyApp`. Ele falha propositalmente porque nunca foi adaptado — o projeto não tem
cobertura de testes real ainda. Antes de escrever features novas, considere criar testes de
verdade em vez de tentar "consertar" esse arquivo.

## Estrutura do projeto

```
lib/
  main.dart                        # inicializa o Supabase e define a tela inicial (FirstScreen)
  models/
    registro_model.dart            # modelo RegistroModel (não usado por registro_screen.dart)
  screens/
    first_screen.dart              # primeira tela do fluxo
    login_screen.dart              # grava um registro na tabela `usuarios` do Supabase
    privacy_screen.dart
    termos_compromisso.dart
    menu_screen.dart                # tela hub, com acesso às seções principais
    apresentacao_screen.dart
    recomendacoes_gerais_screen.dart
    imunobiologicos_screen.dart
    calendarios_vacinais_screen.dart
    calendariosVacinaisScreen/      # uma tela por calendário (PDF)
    eapv_screen.dart
    eapvScreens/                    # uma tela por evento adverso (PDF)
    casos_clinicos_screen1/2/3.dart
    referencias_creditos_screen.dart
    registro_screen.dart            # define sua própria classe local ModeloRegistro
    vacinasScreen/                  # stub: todos os arquivos estão vazios (0 bytes)
  values/
    custom_colors.dart              # pouco usado; ver seção de estilo abaixo
assets/
  *.pdf                             # todo o conteúdo de referência (calendários, EAPV, etc.)
  *.png                             # ícones usados nas telas
```

## Navegação

Não existe tabela de rotas nomeadas nem `onGenerateRoute`. Toda transição de tela é feita de
forma imperativa, diretamente no `onPressed`/`onTap` de um botão:

```dart
Navigator.push(context, MaterialPageRoute(builder: (context) => SomeScreen()));
```

Ao adicionar uma tela nova, siga o mesmo padrão a partir da tela que deve linkar para ela. Não
introduza um sistema de rotas nomeadas sem que isso seja pedido explicitamente — seria uma
refatoração maior, e não algo a fazer de passagem.

## Fluxo principal

```
main.dart (MyApp)
  → FirstScreen
  → LoginScreen        (grava na tabela `usuarios` do Supabase)
  → PrivacyScreen
  → ...
  → MenuScreen          (hub)
      → Apresentação
      → Recomendações Gerais
      → Imunobiológicos
      → Calendários Vacinais
      → EAPV (Eventos Adversos Pós-Vacinais)
      → Casos Clínicos
      → Referências e Créditos
```

## Padrão das telas de conteúdo (PDF)

As telas em `lib/screens/calendariosVacinaisScreen/` e `lib/screens/eapvScreens/` são wrappers
finos e quase idênticos entre si: um `Scaffold` com `AppBar` e corpo contendo apenas

```dart
SfPdfViewer.asset('assets/<arquivo>.pdf')
```

geralmente envolvido em `RotatedBox(quarterTurns: 1)` dentro de um `SafeArea`, para permitir
visualização em modo paisagem.

As telas-lista correspondentes (`calendarios_vacinais_screen.dart`, `eapv_screen.dart`) são
`ListView`s de `ListTile`s, cada um empurrando uma dessas telas de PDF.

**Para adicionar uma nova tela de referência baseada em PDF:**

1. Coloque o PDF em `assets/`.
2. Registre o arquivo em `pubspec.yaml`, na seção `flutter: assets:` — hoje ela apenas referencia
   a pasta `assets/` inteira via glob, então normalmente nenhuma alteração adicional é necessária
   além de o arquivo estar na pasta.
3. Crie uma tela seguindo exatamente o padrão acima (`Scaffold` + `AppBar` + `SfPdfViewer.asset`).
4. Adicione um `ListTile` na tela-lista correspondente, com `Navigator.push` para a nova tela.

## Pontos de atenção conhecidos

- **`lib/screens/vacinasScreen/`** contém apenas arquivos stub (0 bytes, não implementados).
- **`eapv_screen.dart`** tem `ListTile`s (ex.: "VOP", "Rotavírus") que hoje apontam, como
  placeholder, para `HepatiteBScreen()` em vez das telas reais correspondentes. Isso não é um bug
  introduzido recentemente — é um placeholder conhecido, deixado assim propositalmente.
- **`lib/models/registro_model.dart`** (`RegistroModel`) não tem relação com `registro_screen.dart`,
  que define sua própria classe local `ModeloRegistro`. Não assuma que são o mesmo modelo.
- **Estilo não é centralizado.** `lib/values/custom_colors.dart` existe mas é pouco usado; a
  maioria das telas redeclara localmente as mesmas cores (`topColor`, `bottomColor`) e monta o
  mesmo gradiente de fundo de cima para baixo. Ao criar ou editar uma tela, siga essa convenção
  por tela em vez de introduzir um tema global, a menos que isso seja pedido explicitamente.

## Backend (Supabase)

A inicialização acontece uma única vez em `lib/main.dart`, com URL do projeto e chave anônima
fixas no código. O único uso atual é em `login_screen.dart`, que insere um registro na tabela
`usuarios`. Antes de expandir o uso do Supabase (novas tabelas, autenticação, etc.), vale revisar
se as credenciais hardcoded ainda fazem sentido para o estágio do projeto.
