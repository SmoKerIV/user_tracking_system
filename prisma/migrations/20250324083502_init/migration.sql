-- CreateTable
CREATE TABLE "Client" (
    "id" SERIAL NOT NULL,
    "project_name" TEXT NOT NULL,

    CONSTRAINT "Client_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Action" (
    "id" SERIAL NOT NULL,
    "key" TEXT NOT NULL,
    "value" JSONB NOT NULL,
    "timestamp" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "clien_id" INTEGER NOT NULL,

    CONSTRAINT "Action_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Action" ADD CONSTRAINT "Action_clien_id_fkey" FOREIGN KEY ("clien_id") REFERENCES "Client"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
