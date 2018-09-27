-- #!mysql
-- #{ ModernFactions.Rank
-- #    { Init
-- #        { Rank
CREATE TABLE IF NOT EXISTS MF_Rank (
    rankId           INT                          NOT NULL PRIMARY KEY AUTO_INCREMENT,
    factionId        INT                          NOT NULL KEY,
    name             VARCHAR(100) CHARSET utf8mb4 NOT NULL,
    level            INT                          NOT NULL,

    permBuild        BOOL                         NOT NULL,
    permClaim        BOOL                         NOT NULL,
    permDiplomat     BOOL                         NOT NULL,
    permDisband      BOOL                         NOT NULL,
    permFriendlyFire BOOL                         NOT NULL,
    permInvite       BOOL                         NOT NULL,
    permMotto        BOOL                         NOT NULL,

    permPromote      INT                          NOT NULL, -- can promote up to ranks of at most this level
    permDemote       INT                          NOT NULL, -- can demote people from ranks of at most this level
    permKick         INT                          NOT NULL, -- can kick people of ranks of at most this level
    permManage       INT                          NOT NULL, -- can manage permissions of ranks of at most this level

    INDEX (factionId),
    FOREIGN KEY (factionId)
        REFERENCES MF_Faction (factionId)
            ON DELETE CASCADE
);
-- #        }
-- #        { MemberRank
CREATE TABLE IF NOT EXISTS MF_MemberRank (
    member VARCHAR(100) NOT NULL PRIMARY KEY,
    rankId INT          NOT NULL,

    INDEX (rankId),
    FOREIGN KEY (rankId)
        REFERENCES MF_Rank (rankId)
            ON DELETE CASCADE
);
-- #        }
-- #    }
-- #}
