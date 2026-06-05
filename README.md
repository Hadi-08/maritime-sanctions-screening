# Maritime Sanctions Screening: Port of Los Angeles/Long Beach (SQL)

## Overview
An SQL-based sanctions screening project built as part of a self-directed study in data analytics and investigative methodology.

Using SQLite, I screened 21 million AIS vessel movement records from the Port of Los Angeles/Long Beach (2023–2025) against the 2026 OpenSanctions Consolidated List, a consolidated dataset of over 70,000 sanctioned entities across OFAC, EU, UN, UK FCDO, and Australian frameworks.

## Finding
Zero confirmed matches. No vessel, registered owner, or affiliated entity in the traffic record appeared on active sanctions designations.

## What I built
- A staging table reducing the full OpenSanctions list to a focused compliance lookup subset
- B-Tree indexes on MMSI, IMO, Entity Name and ids to match columns, resolving query timeouts on a 21 million row dataset
- A multi-condition JOIN screening hull identifiers, registered names, aliases, and beneficial owner fields
- A synthetic control test injecting a known identifier to verify the pipeline was functioning correctly and zero results were genuine

## Technical stack
- SQLite · DB Browser for SQLite
- SQL (JOINs, indexing, CTEs, synthetic validation)

## Caveats
- Dark activity (transponder disabling, AIS spoofing) is undetectable by definition in any AIS-based screen
- Temporal gap exists between the 2025 AIS traffic ceiling and the 2026 sanctions list, late designations would not be captured
- Data samples in /data are schema illustrations only, not the full dataset

## Files
- `Memorandum.pdf` — one-page findings memo
- `/scripts` — SQL scripts in execution order and validation screenshot
- `/data` — 100-row schema samples for raw AIS, sanctions lookup, and output table

## Built
June 2026, pre-university self-study, Month 1
