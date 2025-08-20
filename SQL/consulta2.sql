CREATE OR REPLACE TABLE `enem.enem_all` AS
-- ===========================
-- Dados de 2018
-- ===========================
SELECT
  farm_fingerprint(GENERATE_UUID()) AS HASHID,
  NU_INSCRICAO,
  NU_ANO,
  -- demais colunas até Q027
  Q026,
  Q027,
  CAST(NULL AS INT64) AS IN_TEMPO_ADICIONAL,
  CAST(NULL AS INT64) AS TP_FAIXA_ETARIA
FROM `dynamic-camp-468900-t5.enem.enem_2018`

UNION ALL

-- ===========================
-- Dados de 2019
-- ===========================
SELECT
  farm_fingerprint(GENERATE_UUID()) AS HASHID,
  NU_INSCRICAO,
  NU_ANO,
  -- demais colunas até Q027
  CAST(NULL AS STRING) AS Q026,
  CAST(NULL AS STRING) AS Q027,
  IN_TEMPO_ADICIONAL,
  CAST(NULL AS INT64) AS TP_FAIXA_ETARIA
FROM `dynamic-camp-468900-t5.enem.enem_2019`

UNION ALL

-- ===========================
-- Dados de 2020
-- ===========================
SELECT
  farm_fingerprint(GENERATE_UUID()) AS HASHID,
  NU_INSCRICAO,
  NU_ANO,
  CAST(NULL AS INT64) AS CO_MUNICIPIO_RESIDENCIA,
  -- demais colunas até Q027
  CAST(NULL AS STRING) AS Q026,
  CAST(NULL AS STRING) AS Q027,
  CAST(NULL AS INT64) AS IN_TEMPO_ADICIONAL,
  TP_FAIXA_ETARIA
FROM `dynamic-camp-468900-t5.enem.enem_2020`;
