-- Drop foreign key pembimbing
ALTER TABLE db_ofes_new.tb_sempro DROP FOREIGN KEY FK_sempro_pembimbing2ID;

ALTER TABLE `tb_sempro` DROP INDEX `FK_sempro_pembimbing2ID`;

-- Drop kolom pembimbing
ALTER TABLE `tb_sempro` DROP `sempro_pembimbing2ID`;