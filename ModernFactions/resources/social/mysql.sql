-- #!mysql
-- #{ ModernFactions.Social
-- #    { Init
-- #        { Announcement
CREATE TABLE MF_Announcement (
    factionId INT                           NOT NULL,
    message   VARCHAR(1000) CHARSET utf8mb4 NOT NULL,
    issued    TIMESTAMP                     NOT NULL DEFAULT CURRENT_TIMESTAMP,

    INDEX (factionId, issued)
);
-- #        }
-- #    }
-- #}
