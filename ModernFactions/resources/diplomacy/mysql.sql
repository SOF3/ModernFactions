-- #!mysql
-- #{ ModernFactions.Diplomacy
-- #    { Init
-- #        { Edges
CREATE TABLE MF_Edge (
    min       INT       NOT NULL,
    max       INT       NOT NULL,
    leftRank  INT       NOT NULL,
    rightRank INT       NOT NULL,
    updated   TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    activated TIMESTAMP,
    active    BOOL      NOT NULL,

    PRIMARY KEY (min, max),
    CHECK (min < max),

    FOREIGN KEY (min)
        REFERENCES MF_Faction (factionId)
            ON DELETE CASCADE,
    FOREIGN KEY (max)
        REFERENCES MF_Faction (factionId)
            ON DELETE CASCADE,
    FOREIGN KEY (leftRank)
        REFERENCES MF_Rank (rankId)
            ON DELETE CASCADE,
    FOREIGN KEY (rightRank)
        REFERENCES MF_Rank (rankId)
            ON DELETE CASCADE
);
-- #        }
-- #    }
-- #}
