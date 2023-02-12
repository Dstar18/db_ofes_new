-- Add kolom nidn
ALTER TABLE `tb_dosen` ADD `dosen_nidn` INT(50) NOT NULL AFTER `dosen_nip`;

-- Merubah kolom menjadi null
ALTER TABLE `tb_pengajuan_pendadaran` CHANGE `pengajuanPendadaran_skpi` `pengajuanPendadaran_skpi` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL;
ALTER TABLE `tb_pengajuan_pendadaran` CHANGE `pengajuanPendadaran_sertifKeahlian1` `pengajuanPendadaran_sertifKeahlian1` VARCHAR(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL;