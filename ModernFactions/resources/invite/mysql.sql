-- #!mysql
-- #{ ModernFactions.Invite
-- #    { Init
-- #        { Openness
CREATE TABLE MF_Openness (
    factionId INT PRIMARY KEY,
    vis ENUM('open', 'request', 'closed'),
    FOREIGN KEY (factionId)
        REFERENCES MF_Faction (factionId)
            ON DELETE CASCADE
);
-- #        }
-- #        { Invite
CREATE TABLE MF_PendingJoin (
    factionId  INT          NOT NULL,
    username   VARCHAR(100) NOT NULL,
    fromServer BOOL         NOT NULL,

    FOREIGN KEY (factionId)
        REFERENCES MF_Faction (factionId)
            ON DELETE CASCADE
);
-- #        }
-- #    }
-- #}
