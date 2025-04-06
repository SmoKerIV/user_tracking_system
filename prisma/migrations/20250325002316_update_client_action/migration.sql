/*
  Warnings:

  - You are about to drop the column `clien_id` on the `Action` table. All the data in the column will be lost.
  - Added the required column `client_id` to the `Action` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Action" DROP CONSTRAINT "Action_clien_id_fkey";

-- AlterTable
ALTER TABLE "Action" DROP COLUMN "clien_id",
ADD COLUMN     "client_id" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Action" ADD CONSTRAINT "Action_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "Client"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
