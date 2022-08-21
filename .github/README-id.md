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

##### Table of content

- [Persiapan](#persiapan)
  - [Figma File](#figma-file)
- [Membuat Projek](#membuat-projek)
- [Menyiapkan assets dan dependencies](#menyiapkan-assets-dan-dependencies)
- [Membuat Struktur Projek](#membuat-struktur-projek)
- [Theme](#theme)

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

### Figma File

Download file figmanya di [Shaynakit.com](https://shaynakit.com/details/bookies-read-digital-book-app).
![Figma file trailer](/docs/images/figma-trailer.png)

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

---

## Menyiapkan `assets` dan `dependencies`

Buka file figma yang telah di download kemudian export semua gambar kedalam folder `/assets/images/`

```#
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

---

## Membuat Struktur Projek

Pada tahap ini kita akan membuat folder untuk projek kita, biasanya ada beberapa folder di dalam folder `lib` yang harus di buat seperti `components`, `datas`, `models`, `screens`, dan juga `theme.dark` untuk menyimpan theme kita.

```#
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

---

## Theme

Setelah kita amati dan perhatikan file figma terdapat beberapa warna dan jenis tulisan yang dipakai, itu semua akan kita masukkan ke dalam `theme.dart` agar dapat kita pakai secara berulang-ulang.

1. Warna

   | Warna         | Kode Warna                                                             |
   | ------------- | ---------------------------------------------------------------------- |
   | text          | ![#35325E](https://via.placeholder.com/16/35325E/35325E.png) `#35325E` |
   | textSecondary | ![#90909E](https://via.placeholder.com/16/90909E/90909E.png) `#90909E` |
   | blue          | ![#8EC9F5](https://via.placeholder.com/16/8EC9F5/8EC9F5.png) `#8EC9F5` |
   | purple        | ![#ADAEFF](https://via.placeholder.com/16/ADAEFF/ADAEFF.png) `#ADAEFF` |
   | red           | ![#FDEBEA](https://via.placeholder.com/16/FDEBEA/FDEBEA.png) `#FDEBEA` |
   | gray          | ![#F6F8FA](https://via.placeholder.com/16/F6F8FA/F6F8FA.png) `#F6F8FA` |

   ```dart
   // theme.dart
   import 'package:flutter/material.dart';

   // Colors
   Color text           = const Color(0XFF35325E);
   Color textSecondary  = const Color(0XFF90909E);
   Color blue           = const Color(0XFF8EC9F5);
   Color purple         = const Color(0XFFADAEFF);
   Color red            = const Color(0XFFFDEBEA);
   Color gray           = const Color(0XFFF6F8FA);
   ```

2. Typography

   Untuk typography sendiri biasanya kalau saya tidak memakai design system, saya akan mengelompokkan berdasarkan jenis dan besar tulisan. Untuk menghemat file size dan merapikan code kita, saya akan mengcopy dan mengubah fontSize dari yang sudah ada.

   ```dart
   // theme.dart

   // ...

   // Typography
   TextStyle regular10  = const TextStyle(fontSize: 10);
   TextStyle regular14  = regular10.copyWith(fontSize: 10);

   TextStyle medium14   = const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
   TextStyle medium16   = medium14.copyWith(fontSize: 16);
   TextStyle medium18   = medium14.copyWith(fontSize: 18);
   ```

---

## Membuat Model Data

![Datas](/docs/images/datas.png)

1. Topic

   ```dart
   // lib/models/topic.dart
   import 'package:flutter/material.dart';

   class Topic {
      final IconData icon;
      final Color color;
      final String title;
      final int totalBook;

      Topic(this.icon, this.color, this.title, this.totalBook);
   }
   ```

2. Book

   ```dart
   // lib/models/book.dart
   class Book {
      final String title;
      final String image;
      final String topic;

      Book(this.title, this.image, this.topic);
   }
   ```

---

## Menyiapkan Data

Setelah model disiapkan, kita akan menyiapkan data yang akan digunakan pada aplikasi ini. Data dapat diambil dari desain yang ada di figma sebagai contoh, namun untuk data yang real bisa diambil dari database maupun api.

```dart
// lib/datas/topics.dart
import 'package:bookies/models/topic.dart';
import 'package:bookies/theme.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

List<Topic> topics = [
   Topic(
      FeatherIcons.award,     // icon
      blue,                   // color
      'My Self Improvement',  // title
      84                      // totalBook
   ),
   Topic(
      FeatherIcons.trendingUp,
      purple,
      'Business Education',
      12
   ),
   Topic(
      FeatherIcons.star,
      red,
      'Non-Fiction Stories',
      5
   ),
];
```

```dart
// lib/datas/populars.dart
import 'package:bookies/models/book.dart';

List<Book> populars = [
   Book(
      "Lamp of Brightnes Real World",  // title
      "assets/images/1.png",           // image
      "Growth Business"                // topic
   ),
   Book(
      "Art of Gathering Do Meeting",
      "assets/images/2.png",
      "Team Product"
   ),
   Book(
      "Tiger In The Garden For Eating",
      "assets/images/3.png",
      "Children Story"
   )
];
```

---

## Waktunya Coding

### Membuat page baru

Kita akan membuat file `home_page.dart` didalam folder screens sebagai tempat kita berimajinasi hehehe. Kemudian buat `Stateless Widget` sebagai pondasi utamanya.

```dart
// lib/screens/home_page.dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

Selanjutnya ubah `main.dart` agar dapat terhubung dengan `home_page.dart`.

```dart
import 'package:flutter/material.dart';
import 'package:bookies/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(), // menjadikan home sebagai screen pertama yang akan dibuka
    );
  }
}
```

#### Slicing Topics

![Guideline Topic](/docs/images/guideline-topics.png)

Karena kita halaman bisa di scroll maka kita akan menggunakan `SingleChildScrollView` dan `Column` untuk menampung semua komponennya

```dart
// libs/screen/home_page.dart

//...
// Containernya kita ganti Scaffold
return Scaffold(
   body: SingleChildScrollView(
      child: Column(

         // agar elemen di dalamnya rata kiri
         crossAxisAlignment: CrossAxisAlignment.start,

         children: [
            // Views akan di letakkan di bagian ini
         ],
      )
   ),
);
//...
```

Kita akan membuat tulisan `Topics` dengan style `medium 18` dengan padding atas 40, kiri 24, dan bawah 12

```dart
// libs/screen/home_page.dart

// ...
Column(
   //...
   children: [

      // Tulisan Topics
      Padding(
         padding: const EdgeInsets.only(top: 40, left: 24, bottom: 12),
         child: Text(
            'Topics',
            style: medium18.copyWith(color: text),
         ),
      )
   ],
)

// ...
```

Kemudian kita membuat horizontal scroll untuk daftar topik yang tersedia, karena memiliki ukuran yang sama jadi kita pakai `ListView.separated` agar rapi. Dan kita akan membungkus listview dengan `SizedBox` dengan ukuran seperti yang ada di gambar

```dart

// Tulisan Topics
SizedBox(
   height: 180,
   child:
      ListView.separated(

         // membuat list horizontal
         scrollDirection: Axis.horizontal,

         // padding list ke
         padding: const EdgeInsets.symmetric(horizontal: 24),

         // Dibagian ini akan kita ganti dengan komponen TopicItem yang akan dibuat
         itemBuilder: ((context, index) => Container()),

         // Jarak antara komponen
         separatorBuilder: (context, index) => const SizedBox(width: 16,),

         // jumlah komponen
         itemCount: topics.length
      ),
)
```

Kita akan membuat komponen untuk topic diddalam `folder components` dan menghubungkannya dengan ListView

```dart
// lib/components/topic_item.dart
import 'package:bookies/models/topic.dart';
import 'package:flutter/material.dart';

class TopicItem extends StatelessWidget {
   // topic yang akan dikirim dari ListView
   final Topic topic;
   const TopicItem({Key? key, required this.topic}) : super(key: key);

   @override
   Widget build(BuildContext context) {
      // Layout untuk Topik disini
      return Container();
   }
}
```

```dart
// lib/screens/home_page.dart

// ...
ListView.separated(
   itemBuilder:
      ((context, index) =>
         TopicItem(topic: topics[index])
      ),
)
```

Tahap terakhir adalah membuat layout untuk topik sesuai dengan ukuran yang ada di desain.

```dart
// lib/components/topic_item.dart

// ...
return Container(
   // Ukuran container
   width: 138,
   height: 180,
   padding: const EdgeInsets.all(18),

   // kita membuat warna container dan juga border radius
   decoration: BoxDecoration(
      color: topic.color,
      borderRadius: BorderRadius.circular(25)),

   child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

         // Untuk lingkaran luar Icon
         Container(
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
               color: Colors.white.withOpacity(.6),
               borderRadius: BorderRadius.circular(23)),
            child: Icon(
               topic.icon,
               color: text,
               size: 24,
            ),
         ),

         // Pemisah
         const Spacer(),

         // Judul topic
         Text(
            topic.title,
            style: medium14.copyWith(color: text),
         ),

         const SizedBox(height: 6,),

         // Jumblah buku
         Text('${topic.totalBook} books',
            style: regular10.copyWith(
               color: text.withOpacity(.7)
            ),
         )
      ],
   ),
);
// ...
```

##### Visual Studio Code Extensions

| No  | Plugin                  |
| --- | ----------------------- |
| 1.  | Awsome Flutter Snippets |
| 2.  | Dart                    |
| 3.  | Flutter                 |
| 4.  | Rainbow Brackets        |
