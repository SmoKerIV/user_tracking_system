/*
  Warnings:

  - You are about to drop the column `client_id` on the `Action` table. All the data in the column will be lost.
  - You are about to drop the column `timestamp` on the `Action` table. All the data in the column will be lost.
  - You are about to drop the column `projectName` on the `Client` table. All the data in the column will be lost.
  - Added the required column `clientId` to the `Action` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `Client` table without a default value. This is not possible if the table is not empty.
  - Added the required column `project` to the `Client` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Action" DROP CONSTRAINT "Action_client_id_fkey";

-- AlterTable
ALTER TABLE "Action" DROP COLUMN "client_id",
DROP COLUMN "timestamp",
ADD COLUMN     "clientId" INTEGER NOT NULL,
ALTER COLUMN "value" SET DATA TYPE TEXT;

-- AlterTable
ALTER TABLE "Client" DROP COLUMN "projectName",
ADD COLUMN     "name" TEXT NOT NULL,
ADD COLUMN     "project" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Action" ADD CONSTRAINT "Action_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES "Client"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
