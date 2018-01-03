---
title: "Cara Install Git di Ubuntu"
slug: cara-install-git
date: 2018-01-02T12:08:39+08:00
draft: false

type: post

categories: 
    - info
    - tutorial

author:
    name: "Admin KBL"
    url: "http://kbl.stmikbumigora.ac.id"

meta:
    image: "/img/post/"
    description: "Deskripsi singkat artikelnya"
---

Git bisa diinstal melalui perintah:

```bash
sudo apt install git
```

Akan tetapi, versi yang akan terinstall adalah versi lama.

Bagaimana cara menginstall Git versi terbaru?

Kita bisa menggunakan PPA resmi dari Git:

```bash
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

<!-- Tulis Artikel di sini -->