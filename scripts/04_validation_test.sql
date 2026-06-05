INSERT INTO vessel_sanctions_lookup (sanction_id, entity_name, ids_to_match, entity_type, sanction_reason)
VALUES ('VALIDATION-TEST-001', 'DORIS', '205086000', 'Vessel', 'Synthetic control test');

SELECT * FROM vessel_sanctioned_traffic 
WHERE mmsi = '205086000';