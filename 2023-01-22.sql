-- Drop relasi
ALTER TABLE db_ofes_new.tb_proposal DROP FOREIGN KEY fk_proposal_pembimbingID;

ALTER TABLE `tb_proposal` DROP INDEX `fk_pendSempro_MhsDosbim`;

-- Drop kolom pembimbing (foreign key)
ALTER TABLE `tb_proposal` DROP `proposal_pembimbingID`;

-- Add kolom pada tabel proposal
ALTER TABLE `tb_proposal` ADD `proposal_MahasiswaID` INT(50) NOT NULL COMMENT 'FK' AFTER `proposalID`, ADD `proposal_WaktuDaftar` DATETIME NOT NULL AFTER `proposal_MahasiswaID`, ADD `proposal_WaktuKonfirmasi` DATETIME NOT NULL AFTER `proposal_WaktuDaftar`, ADD `proposal_JudulTA` VARCHAR(255) NOT NULL AFTER `proposal_WaktuKonfirmasi`, ADD `proposal_ProposalTA` VARCHAR(255) NOT NULL AFTER `proposal_JudulTA`, ADD `proposal_BuktiACC` VARCHAR(255) NOT NULL AFTER `proposal_ProposalTA`, ADD `proposal_KRSTA` VARCHAR(255) NOT NULL AFTER `proposal_BuktiACC`, ADD `proposal_JadwalSeminar` DATETIME NOT NULL AFTER `proposal_KRSTA`, ADD `proposal_Status` VARCHAR(255) NOT NULL AFTER `proposal_JadwalSeminar`, ADD `proposal_Deskripsi` TEXT NOT NULL AFTER `proposal_Status`;

-- Drop seluruh isi tabel proposal_detail(jika ID dibawah ini tidak ada, sesuaikan dengan ID yang ada)
DELETE FROM `tb_proposal_detail` WHERE `tb_proposal_detail`.`proposalDetailID` = 55;

-- Drop seluruh isi tabel sempro(jika ID dibawah ini tidak ada, sesuaikan dengan ID yang ada)
DELETE FROM `tb_sempro` WHERE `tb_sempro`.`semproID` = 45;

-- Drop seluruh isi tabel proposal(jika ID dibawah ini tidak ada, sesuaikan dengan ID yang ada)
DELETE FROM `tb_proposal` WHERE `tb_proposal`.`proposalID` = 63;

-- Relasi tabel proposal dengan mahasiswa
ALTER TABLE `tb_proposal` ADD CONSTRAINT `fk_proposal_mahsiswaID` FOREIGN KEY (`proposal_MahasiswaID`) REFERENCES `tb_mahasiswa`(`IdMahasiswa`) ON DELETE RESTRICT ON UPDATE RESTRICT;


-- Drop relasi tabel proposal_detai dengan tabel proposal
ALTER TABLE db_ofes_new.tb_proposal_detail DROP FOREIGN KEY proposalDetail_proposalID;
ALTER TABLE `tb_proposal_detail` DROP INDEX `psd_psID`;

-- Drop tabel proposal_detail (sudah tidak digunakan)
DROP TABLE ` tb_proposal_detail `;


-- Edit kolom buktiAcc menjadi "null"
ALTER TABLE `tb_proposal` CHANGE `proposal_BuktiACC` `proposal_BuktiACC` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL;

-- Edit kolom jadwal seminar menjadi null
ALTER TABLE `tb_proposal` CHANGE `proposal_JadwalSeminar` `proposal_JadwalSeminar` DATETIME NULL;
