-- FILE: 2.0_Metrics_Calculation.sql
-- Tujuan: Menghitung metrik Nett Sales dan Nett Profit berdasarkan logika bisnis.

CREATE OR REPLACE TABLE
    `pbi-tio-rizky-ramadhani-putra.01.kf_analisa_final_with_metrics` AS
SELECT
    t.* EXCEPT(price), -- Pilih semua kolom kecuali 'price'
    t.price AS actual_price, 
    
    -- 1. Hitung Nett Sales
    t.price * (1 - t.discount_percentage) AS nett_sales,
    
    -- 2. Tentukan Persentase Laba (persentase_gross_laba)
    CASE
        WHEN t.price <= 50000 THEN 0.10
        WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
        WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
        WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
        WHEN t.price > 500000 THEN 0.30
        ELSE 0 
    END AS persentase_gross_laba,
    
    -- 3. Hitung Nett Profit
    (t.price * (1 - t.discount_percentage)) * (CASE
        WHEN t.price <= 50000 THEN 0.10
        WHEN t.price > 50000 AND t.price <= 100000 THEN 0.15
        WHEN t.price > 100000 AND t.price <= 300000 THEN 0.20
        WHEN t.price > 300000 AND t.price <= 500000 THEN 0.25
        WHEN t.price > 500000 THEN 0.30
        ELSE 0
    END) AS nett_profit

FROM
    `pbi-tio-rizky-ramadhani-putra.01.kf_tabel_analisa_final` AS t