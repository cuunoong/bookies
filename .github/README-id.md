![Preview](/docs/images/video-example.gif)

<p align="center">
<a href="https://arifisme.dev/">
<img src="https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=google-chrome&logoColor=white" alt="My Portofolio"/>
</a>

<a href="https://id.linkedin.com/in/cuunoong/">
<img src="https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" alt="Linkedin"/>
</a>

<a href="https://instagram.com/cuunoong/">
<img src="https://img.shields.io/badge/instagram-E7486C?style=for-the-badge&logo=instagram&logoColor=white" alt="instagram"/>
</a>

<a href="https://www.youtube.com/channel/UCrjziO1uYfcBxbcTNjB2M_w">
<img src="https://img.shields.io/badge/youtube-FF0000?style=for-the-badge&logo=youtube&logoColor=white" alt="Youtube"/>
</a>
</p>

# Bookies

Hi 👋, bersama saya Arif Iskandar.
Nah kali ini kita akan melakukan slicing aplikasi Bookies dengan menggunakan [Flutter](https://flutter.io/). Oh iya, Bookies adalah aplikasi mobile untuk membaca buku digital.

Jadi, ayo kita mulai.

---

## Persiapan

Aplikasi yang digunakan:

- [Figma](https://www.figma.com)
- [Visual Studio Code](https://code.visualstudio.com/)
- Emulator
  - Windows - [Android Studio Emulator](https://developer.android.com/studio) atau
  - Mac - [Xcode Simulator](https://developer.apple.com/xcode/) atau
  - IPhone / Android

Apabila semua aplikasi sudah disiapkan, pastikan kamu telah menginstall [flutter](https://docs.flutter.dev/get-started/install) di laptop / pc kamu.

### Figma file

Download file figmanya di [Shaynakit.com](https://shaynakit.com/details/bookies-read-digital-book-app).

---

## Membuat Projek

1. Buka Aplikasi Visual Studio Code

2. Untuk membuat projek silahkan tekan `CTRL + P` atau `Command + P` di Visual Studio Code. Kemudian ketikkan `>Flutter: New Project` lalu tekan `Enter`
   ![Create flutter project](/docs/images/create-flutter-project.png)
3. Kemudian pilih `Application`
   ![Select application themplate](/docs/images/select-application-themplate.png)
4. Lalu pilih lokasi folder projek yang ingin di buat, dan terakhir ketikkan `bookies` pada pilihan nama projek.
   ![Bookies project name](/docs/images/bookies-project-name.png)
5. Tunggu sampai proses selesai, maka akan terbentuk struktur projek seperti gambar ini.
   ![Project created](/docs/images/project-created.png)

## Menyiapkan `assets` dan `dependencies`

Buka file figma yang telah di download kemudian export semua gambar kedalam folder `/assets/images/`

```
.
├── ...
├── android
├── assets/
│   └── images/
│       ├── 1.png
│       ├── 2.png
│       └── 3.png
├── ios
└── ...
```

![Export Images](/docs/images/image-export.png)

Selanjutnya, kita akan mendaftarkan gambar-gambar tadi kedalam `pubspec.yaml`

```yaml
# pubspec.yaml
# ...
flutter:
  # ...
  assets:
    - assets/images/
# ...
```

Setelah assets ditambahkan kita juga akan menginstall [`Feather Icons`](https://feathericons.com/) untuk semua icon yang kita gunakan pada projek kali ini.

```yaml
# pubspec.yaml
# ...
dependencies:
  # ...
  flutter_feather_icons: ^2.0.0
# ...
```

Kemudian simpan `pubspec.yaml` dan lakukan `Flutter Doctor` agar assets dan dependencies kita dapat dipakai.

Caranya dengan menekan `CTRL + P` atau `Command + P` ketikkan `>Flutter: Run Flutter Doctor` lalu tekan `Enter`.

## Membuat Struktur Projek

Pada tahap ini kita akan membuat folder untuk projek kita, biasanya ada beberapa folder di dalam folder `lib` yang harus di buat seperti `components`, `datas`, `models`, `screens`, dan juga `theme.dark` untuk menyimpan theme kita.

```
.
├── ...
├── ios
├── lib/
│   ├── components/
│   ├── datas/
│   ├── models/
│   ├── screens/
│   ├── main.dart
│   └── theme.dart
├── linux
└── ...
```

##### Visual Studio Code Extensions

| No  | Plugin                  |
| --- | ----------------------- |
| 1.  | Awsome Flutter Snippets |
| 2.  | Dart                    |
| 3.  | Flutter                 |
| 4.  | Rainbow Brackets        |
