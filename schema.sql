-- DATABASE PROTOTYPE — SQL DDL (PostgreSQL)
-- Developed by Arman Gandham (15611886)

CREATE TABLE users (
    user_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    role VARCHAR(20) NOT NULL CHECK (role IN ('Student','Teacher','CommunityMember','Admin')),
    hashed_pwd TEXT NOT NULL,
    email VARCHAR(255) UNIQUE
);

CREATE TABLE students (
    student_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    access_code VARCHAR(20) NOT NULL UNIQUE,
    avatar_id VARCHAR(50),
    is_public BOOLEAN DEFAULT FALSE NOT NULL
);

CREATE TABLE sighting_reports (
    sighting_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    species_id UUID,
    encrypted_gps BYTEA NOT NULL, -- AES-256 Encrypted
    fuzzy_gps VARCHAR(100),       -- Publicly visible location
    timestamp TIMESTAMPTZ DEFAULT now(),
    sync_status VARCHAR(20) DEFAULT 'Synced'
);
