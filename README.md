## Website KBL Bumigora

Ini adalah source code webiste KBL Bumigora. Jika ada saran, kritik, pertanyaan, dan isu lainnya silahkan sampaikan di [Issue Tracker](https://github.com/kblbumigora/website/issues).

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