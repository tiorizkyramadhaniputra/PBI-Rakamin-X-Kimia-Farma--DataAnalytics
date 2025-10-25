-- FILE: 3.0_Aggregation_Summary.sql
-- Tujuan: Membuat View ringkasan kinerja (Summary) dan Profit per Kategori untuk Looker Studio.

-- A. VIEW KINERJA UTAMA (Digunakan untuk Summary Scorecard, Tren, Geo Map, Scatter Chart)
CREATE OR REPLACE VIEW
    `pbi-tio-rizky-ramadhani-putra.01.kf_kinerja_summary` AS
SELECT
    EXTRACT(YEAR FROM t.date) AS sales_year,
    t.date, -- Menyertakan tanggal harian untuk kontrol filter yang lebih baik di Looker Studio
    t.provinsi,
    t.kota,
    t.product_category,
    t.actual_price,
    t.nett_sales,
    t.nett_profit,
    t.rating,
    COUNT(t.transaction_id) AS total_transaksi,
    AVG(t.rating) AS avg_rating_transaksi -- Rata-rata rating per baris transaksi

FROM
    `pbi-tio-rizky-ramadhani-putra.01.kf_analisa_final_with_metrics` AS t
ORDER BY t.date;

-- B. VIEW PROFIT PER KATEGORI (Digunakan untuk Stacked Bar Chart dan Pie Chart)
CREATE OR REPLACE VIEW
    `pbi-tio-rizky-ramadhani-putra.01.kf_profit_per_category` AS
SELECT
    EXTRACT(YEAR FROM t.date) AS sales_year,
    t.product_category,
    SUM(t.nett_profit) AS total_profit_kategori,
    SUM(t.nett_sales) AS total_sales_kategori,
    COUNT(t.transaction_id) AS total_transaksi_kategori
FROM
    `pbi-tio-rizky-ramadhani-putra.01.kf_analisa_final_with_metrics` AS t 
GROUP BY 1, 2
ORDER BY sales_year, total_profit_kategori DESC