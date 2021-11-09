class Item {
  String name;
  String price;
  String description;
  String image;
  String stock;
  String sold;
  String rating;

  Item({
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    required this.stock,
    required this.sold,
    required this.rating,
  });
}

var itemList = [
  Item(
      name: 'Meja kayu minimalis',
      price: 'Rp 350.000',
      description:
          'Meja kayu yang memiliki tampilan minimalis. Meja ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
      image: 'resources/images/abel-y-costa-jb-SMviXCjI-unsplash.jpg',
      stock: '70',
      sold: '30',
      rating: '8.9/10.0'),
  Item(
      name: 'Tempat tidur nyaman',
      price: 'Rp 500.000',
      description:
          'Tempat tidur yang minimalis dan nyaman. Tempat tidur ini sangat cocok untuk anda yang sangat menyukai konsep minimalis. Tempat tidur ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
      image: 'resources/images/adam-winger-nclN_J0UtJ8-unsplash.jpg',
      stock: '50',
      sold: '20',
      rating: '8.7/10.0'),
  Item(
      name: 'Lampu meja mini',
      price: 'Rp 75.000',
      description:
          'Lampu meja berukuran mini. Lampu meja mini ini sangat cocok bila anda tidak memiliki banyak ruang di meja anda. Lampu meja ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
      image: 'resources/images/brina-blum-mNXTZu7AeGA-unsplash.jpg',
      stock: '100',
      sold: '10',
      rating: '8.0/10.0'),
  Item(
    name: 'Laci kayu elegan',
    price: 'Rp 450.000',
    description:
        'Laci kayu dengan penampilan elegan. Laci ini akan membuat ruangan lebih terlihat elegan. Laci ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
    image: 'resources/images/earl-wilcox-3xpQCOOe6hM-unsplash.jpg',
    stock: '77',
    sold: '52',
    rating: '8.3/10.0',
  ),
  Item(
    name: 'Kursi kayu minimalis',
    price: 'Rp 225.000',
    description:
        'Kursi kayu dengan tampilan minimalis. Selain penampilan minimalis, kursi ini juga sangat nyaman. Kursi ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
    image: 'resources/images/jonathan-borba-Qcu_TUgYg7w-unsplash.jpg',
    stock: '25',
    sold: '115',
    rating: '9.1/10.0',
  ),
  Item(
    name: 'Meja kayu bundar',
    price: 'Rp 290.000',
    description:
        'Meja kayu berbentuk bundar. Meja ini akan membuat ruangan lebih terlihat menarik. Meja ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
    image: 'resources/images/mahbod-akhzami-jc9dkaaEYr4-unsplash.jpg',
    stock: '37',
    sold: '90',
    rating: '8.8/10.0',
  ),
  Item(
    name: 'Sofa modern',
    price: 'Rp 750.000',
    description:
        'Sofa dengan tampilan modern. Sofa ini sangat nyaman dan sangat indah. Sofa ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
    image: 'resources/images/michiel-annaert-5lLLAxNpAys-unsplash.jpg',
    stock: '115',
    sold: '47',
    rating: '8.3/10.0',
  ),
  Item(
    name: 'Kursi minimalis',
    price: 'Rp 235.000',
    description:
        'Kursi dengan tampilan minimalis. Meski berpenampilan minimalis, kursi ini tetap memperhatikan kenyaman penggunanya. Kursi ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
    image: 'resources/images/mitch-moondae-zXFtsdi9dIc-unsplash.jpg',
    stock: '72',
    sold: '75',
    rating: '8.2/10.0',
  ),
  Item(
    name: 'Laci kayu modern',
    price: 'Rp 512.000',
    description:
        'Laci kayu dengan tampilan modern. Ruangan akan terlihat lebih menarik dengan adanya laci ini. Laci ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
    image: 'resources/images/nathan-oakley--peWKMDCyw4-unsplash.jpg',
    stock: '57',
    sold: '37',
    rating: '8.0/10.0',
  ),
  Item(
    name: 'Laci kayu minimalis',
    price: 'Rp 590.000',
    description:
        'Laci kayu dengan tampilan minimalis. Bila anda seseorang yang sangat menyukai konsep minimalis, laci ini adalah pilihan yang cocok untuk anda. Laci ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
    image: 'resources/images/nathan-oakley-PzYgEB4_pa0-unsplash.jpg',
    stock: '21',
    sold: '115',
    rating: '9.2/10.0',
  ),
  Item(
    name: 'Lampu meja modern',
    price: 'Rp 105.000',
    description:
        'Lampu meja modern. Sangat cocok bila anda ingin membuat tampilan modern di meja anda. Lampu ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
    image: 'resources/images/n-tho-duc-XflP8HDNIIk-unsplash.jpg',
    stock: '57',
    sold: '71',
    rating: '8.4/10.0',
  ),
  Item(
    name: 'Meja kayu',
    price: 'Rp 325.000',
    description:
        'Meja kayu dengan tampilan yang simple dan menarik. Meja ini akan memperindah ruangan di rumah anda. Meja ini memiliki ukuran a meter X b meter X c meter. Produk ini dibuat dengan bahan pilihan yang sangat berkualitas. Buat rumah anda tampil lebih indah dengan produk ini. Ayo beli sekarang.',
    image: 'resources/images/veronika-fitart-bUmtYSRQpHs-unsplash.jpg',
    stock: '37',
    sold: '70',
    rating: '8.4/10.0',
  ),
];
