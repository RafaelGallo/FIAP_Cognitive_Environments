SELECT
  Q002,  -- Escolaridade da mãe
  COUNT(*) AS total_participantes,
  AVG(NU_NOTA_CN) AS media_ciencias_natureza,
  AVG(NU_NOTA_CH) AS media_ciencias_humanas,
  AVG(NU_NOTA_LC) AS media_linguagens,
  AVG(NU_NOTA_MT) AS media_matematica,
  AVG(NU_NOTA_REDACAO) AS media_redacao
FROM `dynamic-camp-468900-t5.enem.enem_all`
WHERE TP_PRESENCA_MT = 1  -- apenas presentes na prova de matemática
  AND NU_ANO = 2018       -- ou remova para todos os anos
GROUP BY Q002
ORDER BY media_matematica DESC;

SELECT
  Q024,  -- Computador em casa
  COUNT(*) AS total_participantes,
  AVG(NU_NOTA_CN) AS media_ciencias_natureza,
  AVG(NU_NOTA_CH) AS media_ciencias_humanas,
  AVG(NU_NOTA_LC) AS media_linguagens,
  AVG(NU_NOTA_MT) AS media_matematica,
  AVG(NU_NOTA_REDACAO) AS media_redacao
FROM `dynamic-camp-468900-t5.enem.enem_all`
WHERE TP_PRESENCA_MT = 1
  AND NU_ANO = 2018
GROUP BY Q024
ORDER BY media_matematica DESC;


SELECT
  Q006,  -- Faixa de renda familiar
  COUNT(*) AS total_participantes,
  AVG(NU_NOTA_CN) AS media_ciencias_natureza,
  AVG(NU_NOTA_CH) AS media_ciencias_humanas,
  AVG(NU_NOTA_LC) AS media_linguagens,
  AVG(NU_NOTA_MT) AS media_matematica,
  AVG(NU_NOTA_REDACAO) AS media_redacao
FROM `dynamic-camp-468900-t5.enem.enem_all`
WHERE TP_PRESENCA_MT = 1
  AND NU_ANO = 2018
GROUP BY Q006
ORDER BY media_matematica DESC;
