/*
  Warnings:

  - You are about to drop the column `project_name` on the `Client` table. All the data in the column will be lost.
  - Added the required column `projectName` to the `Client` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Client" DROP COLUMN "project_name",
ADD COLUMN     "projectName" TEXT NOT NULL;
