class Lokawisata{
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  Lokawisata({
    this.name,
    this.location,
    this.description,
    this.openDays,
    this.openTime,
    this.ticketPrice,
    this.imageAsset,
    this.imageUrls,
  });

  static List<Lokawisata> allCities()
  {
    var lstOfCities = new List<Lokawisata>();


    lstOfCities.add(new Lokawisata(
        name: "Lokawisata Baturaden",
        location:
        "Baturaden",
        description:
        "Baturaden merupakan destinasi wisata yang cocok dikunjungi bersama keluarga, karena di dalamnya terdapat berbagai fasilitas hiburan yang dapat dinikmati anak-anak hingga dewasa. Lokasinya yang berada di kaki Gunung Slamet membuat hawa di Lokawisata Baturaden terasa sejuk.",
        openDays: "Setiap hari",
        openTime: "08.00 - 17.00",
        ticketPrice: "14k",
        imageAsset:
        "https://firebasestorage.googleapis.com/v0/b/jalan-yuk.appspot.com/o/g_baturaden.jpg?alt=media&token=abfb57c8-5935-41d5-8bef-0fbf04a55714"));

    lstOfCities.add(new Lokawisata(
        name: "Caping Park",
        location:
        "Kebumen",
        description:
        "Caping Park merupakan gabungan tempat wisata selfi yang menarik dan wisata ramah anak. Didalam Caping Park sendiri terdapat jembatan kaca, taman bunga, jembatan anjasmara sampai dengan bukit rejuna yang keren banget untuk jadi spot selfie. Selain ada spot selfie, di Caping Park juga bisa main bareng hewan mulai dari kelinci, kambing dan ikan.",
        openDays: "Setiap hari",
        openTime: "08.00 - 17.00",
        ticketPrice: "20k",
        imageAsset:
        "https://firebasestorage.googleapis.com/v0/b/jalan-yuk.appspot.com/o/g_caping.png?alt=media&token=6011465b-16ec-46f5-8a50-cd01141cbd11"));

    lstOfCities.add(new Lokawisata(
        name:"Kebun Raya",
        location:
        "Baturraden",
        description:
        "Kebun Raya merupakan area konservasi beragam jenis tanaman.Total tidak kurang dari 3000 specimen tanaman bisa dilihat di sini. Dengan total luas area 140 Ha berada di kawasan wisata hutan pinus Perhutani yang teduh dan sejuk. Kebun raya ini sangat cocok sebagai tempat rekreasi keluarga.",
        openDays: "Setiap hari",
        openTime: "08.00 - 17.00",
        ticketPrice: "20k",
        imageAsset:
        "https://firebasestorage.googleapis.com/v0/b/jalan-yuk.appspot.com/o/g_kebunraya.jpg?alt=media&token=32b8ee0f-414c-4931-b264-6ab0afddffa0"));

    lstOfCities.add(new Lokawisata(
        name: "Limpakuwus",
        location:
        "Sumbang",
        description:
        "Limpakuwus merupakan sebuah desa di kaki gunung slamet yang tidak jauh dari pusat kota Purwokerto. Desa yang menyimpan sebuah tempat indah berupa Hutan pinus yang sangat terjaga dan terawat ini menjadi tempat yang wajib banget kamu kunjungi ketika berada di Purwokerto. Di tempat ini kamu akan di suguhkan dengan pohon pinus yang rindang-rindang serta hamparan bunga yang mekar nan indah yang ada di sekitar hutan ini.",
        openDays: "Setiap hari",
        openTime: "08.00 - 17.00",
        ticketPrice: "13k",
        imageAsset:
        "https://firebasestorage.googleapis.com/v0/b/jalan-yuk.appspot.com/o/g_limpakuwus.jpg?alt=media&token=20c70401-0a24-4de7-991b-4463d6a18d43"));

    lstOfCities.add(new Lokawisata(
        name:  "The Forest",
        location:
        "Rempoah",
        description:
        "The Forest hampir seperti The Village. Akan tetapi, di sini, Anda cukup membayar tiket masuk saja dan untuk menikmati wahana, semuanya Gratis. Fasilitas yang diberikan sudah termasuk lengkap dengan berbagai spot yang instagramable sekali. Anda juga bisa beristirahat di beberapa tempat bersantai. Lokasi ini sangat cocok bagi keluarga maupun sekedar bersantai ria dengan teman-teman Anda di siang hari.",
        openDays: "Setiap hari",
        openTime: "08.00 - 17.00",
        ticketPrice: "15k",
        imageAsset:
        "https://firebasestorage.googleapis.com/v0/b/jalan-yuk.appspot.com/o/g_theforest.jpg?alt=media&token=9132543f-2b89-4b73-982c-be2d26bdef8a"));

    lstOfCities.add(new Lokawisata(
        name: "Bukit Watu Meja",
        location:
        "Kebasen",
        description:
        "Watu Meja merupakan sebuah bukit yang disini anda dapat menikmati keindahan panorama alam dari atas bukit. Sebelum itu, anda harus mendaki bukit selama kurang lebih 20 menit dengan berjalan kaki. Pada saat awal pendakian anda akan menjumpai pohon bamboo, dan selanjutnya anda akan melewati kawasan yang dikelilingi oleh hutan pinus yang menjulang. Kemudian menikmati pemandangan sungai serayu yang berlika-liku ditemani dengan angin diatas bukit yang cukup kencang.",
        openDays: "Setiap hari",
        openTime: "08.00 - 17.00",
        ticketPrice: "7k",
        imageAsset:
        "https://firebasestorage.googleapis.com/v0/b/jalan-yuk.appspot.com/o/g_watumeja.jpg?alt=media&token=b01546b7-8064-4237-92d4-5ef3c1e5824f"));

    lstOfCities.add(new Lokawisata(
        name: "The Village",
        location:
        "Rempoah",
        description:
        "The Village merupakan sebuah destinasi wisata yang ada di Purwokerto. Di tempat ini kamu selain akan di suguhkan dengan design bangunan yang mewah nan megah kamu juga dapat menikmati makanan khas purwokerto yang ada di tempat ini.",
        openDays: "Setiap hari",
        openTime: "08.00 - 17.00",
        ticketPrice: "23k",
        imageAsset:
        "https://firebasestorage.googleapis.com/v0/b/jalan-yuk.appspot.com/o/g_thevillage.jpg?alt=media&token=e969c4ad-cd21-42ba-adb4-d8a97314e260",));

    lstOfCities.add(new Lokawisata(
        name: "Curug Telu",
        location:
        "Karangsalam",
        description:
        "Curug Telu artinya Air Terjun Tiga, dan memang di lokasi curug telu secara kasat mata terlihat ada 3 air terjun. Menuju ke tempat wisata tersebut, dapat melalui 2 jalan. Yaitu melewati Kotayasa dan Baturaden arah ke Telaga sunyi.",
        openDays: "Setiap hari",
        openTime: "08.00 - 17.00",
        ticketPrice: "5k",
        imageAsset:
        "https://firebasestorage.googleapis.com/v0/b/jalan-yuk.appspot.com/o/g_curugtelu.jpg?alt=media&token=4c68b4bb-e58d-4a19-bcd3-9f9a5f8df7be"));

    lstOfCities.add(new Lokawisata(
        name: "Curug Bayan",
        location:
        "Ketenger",
        description:
        "Curug Bayan merupakan air terjun yang berada di tengah perkebunan dan hutan sehingga menyuguhkan pemandangan alam yang masih sangat asri dan udara yang sejuk. Curug ini memiliki ketinggian 7 meter dengan kolam alami yang memiliki luas sekitar 200 hingga 300 meter persegi dan kedalaman 2 hingga 5 meter. Dan para pengunjung juga dapat berenang atau mandi di kolam ini.",
        openDays: "Setiap hari",
        openTime: "08.00 - 17.00",
        ticketPrice: "3k",
        imageAsset:
        "https://firebasestorage.googleapis.com/v0/b/jalan-yuk.appspot.com/o/g_curugbayan.jpg?alt=media&token=32d9e599-58cf-41d0-bce0-7001062df381"));






    return lstOfCities;
  }

}