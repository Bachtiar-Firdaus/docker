# 🐳 Belajar Docker: Dari Pemula Sampai Mahir

Repo ini berisi dokumentasi, konfigurasi, dan latihan pribadi gue selama mempelajari Docker. Perjalanan dari nol (apa itu container?) sampai bisa deploy aplikasi kompleks menggunakan Docker Compose dan Orchestration.

---

## 🚀 Daftar Isi
1. [Dasar Docker](#dasar-docker)
2. [Manajemen Images & Containers](#manajemen-images--containers)
3. [Docker Storage (Volumes)](#docker-storage-volumes)
4. [Docker Networking](#docker-networking)
5. [Docker Compose](#docker-compose)
6. [Dockerizing Application (Case Studies)](#dockerizing-application)

---

## 🛠️ Persiapan Lingkungan
Sebelum mulai, pastikan sudah terinstall:
* Docker Desktop (Windows/Mac) atau Docker Engine (Linux).
* Terminal favorit lu (PowerShell/Bash/Zsh).
* Pemahaman dasar tentang perintah CLI.

---

## 📚 Kurikulum Belajar

### 1. Dasar Docker
Memahami perbedaan Virtual Machine vs Container.
- Perintah: `docker version`, `docker info`.
- Arsitektur Docker (Daemon, Client, Registry).

### 2. Manajemen Images & Containers
- Menarik image dari Docker Hub: `docker pull <image>`.
- Menjalankan container: `docker run`.
- Melihat container yang jalan: `docker ps`.
- Menghentikan & menghapus: `docker stop`, `docker rm`.

### 3. Membuat Image Sendiri (Dockerfile)
Belajar cara menulis instruksi di `Dockerfile`:
- `FROM`, `WORKDIR`, `COPY`, `RUN`, `CMD`, `EXPOSE`.
- Build image: `docker build -t nama-image:tag .`.

### 4. Docker Storage (Volumes & Bind Mounts)
Cara agar data tidak hilang saat container dihapus.
- Anonymous Volume.
- Named Volume: `docker volume create`.
- Bind Mounts (Mapping folder lokal ke container).

### 5. Docker Compose (Multi-Container)
Mengelola banyak container (misal: App + Database) dalam satu file `docker-compose.yml`.
- `docker-compose up -d`.
- `docker-compose down`.

---

## 📂 Struktur Folder
```text
.
├── 01-hello-world/        # Latihan pertama running container
├── 02-dockerfile-basic/    # Belajar bikin custom image
├── 03-docker-volumes/      # Latihan persistensi data
├── 04-docker-compose/      # Projek multi-container (Nginx + PHP + MySQL)
└── README.md
