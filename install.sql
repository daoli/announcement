CREATE TABLE IF NOT EXISTS `PREFIX_announcement` (
  `id_skeleton` int(10) unsigned NOT NULL,
  `text` text,
  PRIMARY KEY (`id_skeleton`)
) ENGINE=ENGINE_TYPE DEFAULT CHARSET=utf8;

INSERT INTO `PREFIX_announcement` VALUES (1, 'Some text');
