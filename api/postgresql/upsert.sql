DROP TABLE IF EXISTS ocaf_upsert CASCADE;

CREATE TABLE ocaf_upsert
AS TABLE ocaf
WITH NO DATA;

COPY ocaf_upsert FROM 'ocaf_model.csv' HEADER CSV DELIMITER ',';

SELECT count(*) FROM ocaf_upsert;

INSERT INTO ocaf
    SELECT * FROM ocaf_upsert
    ON CONFLICT DO NOTHING;

SELECT count(*) FROM ocaf;
