# PBI-Rakamin X Kimia Farma--DataAnalytics
Proyek Analisis Kinerja Bisnis Kimia Farma 2020-2023 menggunakan Google BigQuery dan Looker Studio.

By : Tio Rizky Ramadhani Putra

# 🚀 FINAL TASK: ANALISIS KINERJA BISNIS KIMIA FARMA (2020-2023)

## 🎯 Ringkasan Proyek

Proyek ini adalah bagian dari *challenge* untuk menganalisis kinerja bisnis PT Kimia Farma selama periode empat tahun, dari **1 Januari 2020 hingga 31 Desember 2023**. Tujuan utamanya adalah untuk:
1.  Mengukur metrik kinerja utama (`Total Penjualan`, `Nett Profit`, `Volume Transaksi`).
2.  Mengidentifikasi tren penjualan tahunan dan kontribusi profit berdasarkan kategori produk.
3.  Menemukan anomali di antara kantor cabang, terutama cabang dengan **Rating Tinggi** namun **Volume Transaksi Rendah**.
4.  Menyajikan temuan dan rekomendasi strategis melalui *Executive Dashboard* yang interaktif.

## 🛠️ Metodologi dan Tools

Proyek ini sepenuhnya diimplementasikan menggunakan arsitektur *cloud-based* untuk pemrosesan data besar (*Big Data*).

| Tahap Proyek | Alat Utama | Tujuan |
| :--- | :--- | :--- |
| **Data Storage & ETL** | Google Cloud Platform (GCP) | Data (CSV) diimpor ke **Google BigQuery** untuk integrasi dan penyimpanan. |
| **Data Transformation & Metrics** | **SQL (BigQuery)** | Membuat *View* dan Tabel Analisa. Melakukan *JOIN* dari 4 tabel mentah, *Feature Engineering*, dan perhitungan metrik kompleks (`Nett Sales`, `Nett Profit`). |
| **Visualisasi & Reporting** | **Google Looker Studio** | Mengembangkan *Dashboard* interaktif yang komprehensif untuk memvisualisasikan tren geografis, kategori produk, dan anomali. |

## 📂 Struktur Repositori

Repositori ini diorganisir untuk transparansi penuh dari *data source* hingga *final dashboard*.
PBI-Rakamin-Kimia-Farma-Analytics/
├── 01_Data_Mentah/
│   ├── kf_final_transaction.csv
│   ├── kf_inventory.csv
│   ├── kf_kantor_cabang.csv
│   └── kf_product.csv
├── 02_SQL_Scripts/
│   ├── 1.0_Data_Integration.sql  (Script JOIN awal untuk membuat kf_tabel_analisa_final)
│   ├── 2.0_Metrics_Calculation.sql (Script menghitung nett_sales & nett_profit)
│   └── 3.0_Aggregation_Summary.sql (Script GROUP BY untuk kf_kinerja_summary)
├── 03_Presentation_and_Report/
│   ├── Tio_Rizky_Ramadhani_Putra__KIMIA_FARMA.pptx (File presentasi Anda)
│   └── Dashboard_Screenshot.png (Screenshot Looker Studio)
└── README.md (Deskripsi proyek dan temuan kunci)

## 📈 Temuan Kunci (Key Findings) dari Dashboard

Dashboard analitik mengungkapkan beberapa wawasan kritis yang menjadi dasar rekomendasi bisnis:

### 1. Kinerja Keuangan & Tren (2020-2023)
* **Total Penjualan:** **321,2 M** | **Total Keuntungan (Nett Profit): 91,2 M**
* **Stabilitas Penjualan Tahunan:** Kontribusi penjualan per tahun cenderung **merata dan stabil** ($\approx 25\%$ per tahun), menunjukkan tidak adanya pertumbuhan yang signifikan atau penurunan yang drastis selama periode 4 tahun.
* **Fluktuasi Tren:** Tren bulanan menunjukkan adanya fluktuasi, namun secara total tahunan, kinerja cenderung **stagnan**.

### 2. Dominasi Regional & Ketergantungan
* **Pusat Bisnis:** Provinsi **Jawa Barat** adalah kontributor utama dan paling dominan.
    * **Penjualan:** Jawa Barat menyumbang **penjualan tertinggi** ($> 95 \text{ M}$), jauh melampaui provinsi peringkat kedua.
    * **Volume Transaksi:** Jawa Barat juga mendominasi volume transaksi, menegaskan statusnya sebagai **pusat aktivitas pelanggan utama**.
* **Implikasi:** Bisnis Kimia Farma memiliki **ketergantungan risiko tinggi** pada kinerja di wilayah Jawa Barat.

### 3. Profitabilitas Kategori Produk
* **Konsentrasi Profit:** Keuntungan perusahaan didominasi oleh segelintir kategori produk.
    * Kategori **R06** (Profit $20,3\%$) dan **M01AE** (Profit $18\%$) menyumbang hampir **$40\%$ dari total Nett Profit** secara keseluruhan.

### 4. Analisis Anomali Cabang (Kualitas vs. Kuantitas)
* **Anomali Peluang (Rating Tinggi / Volume Rendah):** Scatter Chart mengidentifikasi beberapa cabang yang memiliki **Rating Pelanggan yang Sangat Baik** (di atas 4.0) namun **Volume Transaksi yang Rendah** ($< 2 \text{ rb}$ transaksi).
* **Rekomendasi:** Cabang-cabang ini harus menjadi target **strategi pemasaran dan promosi agresif** untuk meningkatkan volume, memanfaatkan kepuasan pelanggan yang sudah tinggi.

## 🔗 Akses Cepat

| Sumber Daya | Tautan |
| :--- | :--- |
| **Executive Dashboard (Looker Studio)** | [Link Dashboard Anda di Looker Studio](MASUKKAN_LINK_LOOKER_STUDIO_ANDA_DI_SINI) |
| **Laporan Presentasi (PPT)** | `03_Presentation_and_Report/Tio_Rizky_Ramadhani_Putra__KIMIA_FARMA.pptx` |
