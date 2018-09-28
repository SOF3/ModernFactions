-- #!mysql
-- #{ ModernFactions.Basic
-- #    { Init
-- #        { Meta
CREATE TABLE IF NOT EXISTS MF_Metadata (
    name  VARCHAR(100) NOT NULL PRIMARY KEY,
    value VARCHAR(200) NOT NULL
);
-- #        }
-- #        { Faction
CREATE TABLE IF NOT EXISTS MF_Faction (
    factionId INT                           NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name      VARCHAR(100)  CHARSET utf8mb4 NOT NULL UNIQUE,
    motto     VARCHAR(1000) CHARSET utf8mb4 NOT NULL             DEFAULT '',
    balance   INT                           NOT NULL,
    created   TIMESTAMP                     NOT NULL             DEFAULT CURRENT_TIMESTAMP
);
-- #        }
-- #        { Member
CREATE TABLE IF NOT EXISTS MF_Member (
    member    VARCHAR(100) NOT NULL PRIMARY KEY,
    factionId INT          NOT NULL,
    since     TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,

    INDEX (factionId),
    FOREIGN KEY (factionId)
        REFERENCES MF_Faction (factionId)
            ON DELETE CASCADE
);
-- #        }
-- #    }
-- #}
