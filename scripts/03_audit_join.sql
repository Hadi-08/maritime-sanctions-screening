CREATE VIEW vessel_sanctioned_traffic AS
SELECT 
    a.mmsi,
    a.imo,
    a.vessel_name,
    s.entity_type,
    s.entity_name AS sanctioned_name,
    s.aliases,
    s.flagged_countries,
    s.sanction_reason
FROM ais_table AS a
JOIN vessel_sanctions_lookup AS s 
    ON a.mmsi = s.ids_to_match 
    OR a.imo = s.ids_to_match 
    OR LOWER(a.vessel_name) = LOWER(s.entity_name)
    OR LOWER(s.aliases) = LOWER(a.vessel_name);