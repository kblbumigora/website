## Website KBL Bumigora

[![Build Status](https://travis-ci.org/kblbumigora/website.svg?branch=master)](https://travis-ci.org/kblbumigora/website)

Ini adalah source code webiste KBL Bumigora. Jika ada saran, kritik, pertanyaan, _request_ fitur,dan isu lainnya silahkan sampaikan melalui [Issue Tracker](https://github.com/kblbumigora/website/issues).

Diskusi:

- Group FB: https://www.facebook.com/groups/kbl.bumigora/
- Telegram: https://t.me/kbl_bumigora

## Requirement

Adapun kebutuhan yang harus diinstal untuk mengembangkan website ini adalah:

- Git 2.15^

    ```bash
    sudo add-apt-repository ppa:git-core/ppa
    sudo apt-get update
    sudo apt-get install git
    ```

- Hugo 0.31.1

    ```bash
    wget https://github.com/gohugoio/hugo/releases/download/v0.31.1/hugo_0.31.1_Linux-64bit.deb
    sudo dpkg -i hugo_0.31.1_Linux-64bit.deb
    ```

## Menjalankan Server di localhost

Ketik perintah:

```bash
hugo server
```

Setelah itu buka http://localhost:1313.

## Melakukan deploy ke Github

```bash
bash deploy.sh
```

## Membuat Gallery baru

Contoh: membuat gallery untuk foto seminar nasional 2018.

```bash
hugo new gallery/seminar-nasional-2018.md
```

N.B: Nama file harus berakhiran dengan `.md` atau `.markdown` dan tidak boleh menggunakan spasi.

## Membuat Artikel baru

Contoh: membuat artikel untuk pengumuman.

```bash
hugo new post/jadwal-kegiatan-2018.md
```

N.B: Nama file harus berakhiran dengan `.md` atau `.markdown` dan tidak boleh menggunakan spasi.

## Membuat halaman baru

Contoh: membuat halaman about

```bash
hugo new about.md
```

N.B: Nama file harus berakhiran dengan `.md` atau `.markdown` dan tidak boleh menggunakan spasi.