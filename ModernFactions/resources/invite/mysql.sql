-- #!mysql
-- #{ ModernFactions.Invite
-- #    { Init
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
