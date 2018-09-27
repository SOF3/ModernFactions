-- #!mysql
-- #{ ModernFactions.Claim
-- #    { Init
-- #        { Claim
CREATE TABLE MF_Claim (
    factionId  INT       NOT NULL,
    min        POINT     NOT NULL,
    max        POINT     NOT NULL,
    claim_time TIMESTAMP NOT NULL,

    INDEX (factionId),
    FOREIGN KEY (factionId)
        REFERENCES MF_Faction (factionId)
            ON DELETE CASCADE
);
-- #        }
-- #    }
-- #}
