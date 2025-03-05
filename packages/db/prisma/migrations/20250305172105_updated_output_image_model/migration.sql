/*
  Warnings:

  - Added the required column `prompt` to the `OutputImages` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updatedAt` to the `OutputImages` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "OutputImageStatusEnum" AS ENUM ('Pending', 'Generated', 'Failed');

-- AlterTable
ALTER TABLE "OutputImages" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "prompt" TEXT NOT NULL,
ADD COLUMN     "status" "OutputImageStatusEnum" NOT NULL DEFAULT 'Pending',
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;
