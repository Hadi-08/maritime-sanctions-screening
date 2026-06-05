CREATE INDEX idx_lookup_ids ON vessel_sanctions_lookup(ids_to_match);
CREATE INDEX idx_lookup_name ON vessel_sanctions_lookup(entity_name);
CREATE INDEX idx_ais_mmsi ON ais_table(mmsi);
CREATE INDEX idx_ais_imo ON ais_table(imo);