-- FILE: 1.0_Data_Integration.sql
-- Tujuan: Menggabungkan data Transaksi, Cabang, dan Produk ke dalam satu tabel dasar analisa.

CREATE OR REPLACE TABLE
    `pbi-tio-rizky-ramadhani-putra.01.kf_tabel_analisa_final` AS
SELECT
    t.transaction_id,
    t.date,
    t.branch_id,
    c.branch_name,
    c.kota,
    c.provinsi,
    t.product_id,
    p.product_name,
    p.product_category,
    t.price,             -- Merupakan actual_price dari data mentah
    t.discount_percentage,
    t.customer_name,
    t.rating
FROM
    `pbi-tio-rizky-ramadhani-putra.01.kf_final_transaction` AS t
LEFT JOIN
    `pbi-tio-rizky-ramadhani-putra.01.kf_kantor_cabang` AS c
    ON t.branch_id = c.branch_id
LEFT JOIN
    `pbi-tio-rizky-ramadhani-putra.01.kf_product` AS p
    ON t.product_id = p.product_id