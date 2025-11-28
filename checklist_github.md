# ✅ Checklist Flutter per GitHub

## 1. Struttura del progetto
- [ ] Cartella principale `lib/` presente
- [ ] Cartelle:
  - `pages/` (home_page, my_keys_page, friends_keys_page, encrypt_page, decrypt_page)
  - `services/` (rsa_service, file_service, storage_service)
  - `models/` (key_pair, friend_key)
  - `widgets/` (big_button, key_card, file_picker_button)
- [ ] File `main.dart` presente

## 2. Gestione Git
- [ ] Git inizializzato (`git init`)
- [ ] Remote origin impostato verso il repo GitHub corretto
- [ ] Primo commit fatto (`git add .` + `git commit -m "Initial commit"`)
- [ ] `.gitignore` creato e corretto (Flutter, Android, iOS, build)


## 3. Gestione chiavi
- [ ] Chiave privata RSA NON inclusa nel repository
- [ ] Chiave pubblica RSA esportabile / condivisibile
- [ ] Servizio RSA pronto (`rsa_service.dart`)

## 4. File e Storage
- [ ] Cartella `File/` presente per salvare file locali
- [ ] File criptati salvati in `/Download/Encrypted`
- [ ] Servizio file (`file_service.dart`) implementato per pick/save/share

## 5. UI / Pagine
- [ ] HomePage funzionante con 4 quadrati animati
- [ ] Pagine:
  - [ ] MyKeysPage
  - [ ] FriendsKeysPage
  - [ ] EncryptPage
  - [ ] DecryptPage
- [ ] Routing corretto in `main.dart`

## 6. Sicurezza
- [ ] Chiave privata salvata crittata con AES derivato da PIN
- [ ] Chiavi pubbliche amici salvate in JSON locale
- [ ] PIN richiesto per decriptare file / visualizzare chiave privata

## 7. Test
- [ ] Criptazione di un file locale funziona
- [ ] Decriptazione dello stesso file funziona
- [ ] Condivisione chiave pubblica con un amico funziona
- [ ] Aggiornamento lista chiavi amici funziona
- [ ] Navigazione tra le pagine senza errori

## 8. Repository pronto
- [ ] Tutti i file inutili esclusi dal commit (`build/`, `.dart_tool/`, `.pub-cache/`)
- [ ] File importanti presenti:
  - `pubspec.yaml`
  - `main.dart`
  - tutte le pagine
  - services, models, widgets
- [ ] README.md pronto con istruzioni progetto
- [ ] Licenza aggiunta (opzionale)
