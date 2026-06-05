CREATE TABLE vessel_sanctions_lookup (
    sanction_id TEXT PRIMARY KEY, 
    entity_name TEXT,
    aliases TEXT,
    ids_to_match TEXT,
    entity_type TEXT,
    flagged_countries TEXT,
    sanction_reason TEXT
);

INSERT INTO vessel_sanctions_lookup
SELECT 
    id, 
    name, 
    aliases, 
    identifiers, 
    schema, 
    countries, 
    sanctions 
FROM 'Consolidated Sanctions'
WHERE schema IN ('Vessel', 'Organization', 'Company', 'Person', 'LegalEntity');
