-- #!mysql
-- #{ ModernFactions.Home
-- #    { Init
CREATE TABLE MF_Home (
    homeId    INT                          NOT NULL PRIMARY KEY,
    factionId INT                          NOT NULL,
    name      VARCHAR(100) CHARSET utf8mb4 NOT NULL NOT NULL,
    x         DOUBLE                       NOT NULL,
    y         DOUBLE                       NOT NULL,
    z         DOUBLE                       NOT NULL,
    INDEX (factionId),
    FOREIGN KEY (factionId)
        REFERENCES MF_Faction (factionId)
            ON DELETE CASCADE
);
-- #    }
-- #}
