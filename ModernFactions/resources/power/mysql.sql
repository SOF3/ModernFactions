-- #!mysql
-- #{ ModernFactions.Power
-- #    { Init
-- #        { Static
CREATE TABLE MF_Power_Static (
    factionId INT    NOT NULL PRIMARY KEY,
    power     DOUBLE NOT NULL,

    FOREIGN KEY (factionId)
        REFERENCES MF_Faction (factionId)
            ON DELETE CASCADE
);
-- #        }
-- #    }
-- #}
