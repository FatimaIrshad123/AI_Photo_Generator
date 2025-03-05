/*
  Warnings:

  - The values [AsianAmerican,EastAsian,SouthEastAsian,SouthAsian,MiddleEastern] on the enum `EthinecityEnum` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "EthinecityEnum_new" AS ENUM ('White', 'Black', 'Asian American', 'East Asian', 'South East Asian', 'South Asian', 'Middle Eastern', 'Pacific', 'Hispanic');
ALTER TABLE "Model" ALTER COLUMN "ethinicity" TYPE "EthinecityEnum_new" USING ("ethinicity"::text::"EthinecityEnum_new");
ALTER TYPE "EthinecityEnum" RENAME TO "EthinecityEnum_old";
ALTER TYPE "EthinecityEnum_new" RENAME TO "EthinecityEnum";
DROP TYPE "EthinecityEnum_old";
COMMIT;
