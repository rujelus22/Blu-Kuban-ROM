.class public Lcom/googlex/common/io/android/AndroidFixedPersistentStore;
.super Lcom/googlex/common/io/BasePersistentStore;

# interfaces
.implements Lcom/googlex/common/io/PersistentStore;


# static fields
.field private static final BLOCK_SIZE:I = 0x1000

.field private static final LOGTAG:Ljava/lang/String; = "Fixed_Persistence_Store"

.field private static final PREFIX:Ljava/lang/String; = "FIXED_DATA_"


# instance fields
.field private baseFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/googlex/common/io/BasePersistentStore;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must already exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_58

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be writeable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_7f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be readable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    return-void
.end method

.method private makeFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unMakeFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public deleteAllBlocks(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_b
    array-length v2, v1

    if-ge v0, v2, :cond_47

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t delete file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_47
    return-void
.end method

.method public deleteBlock(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public deleteBlockX(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlex/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->deleteBlock(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;

    const-string v1, "Delete failed."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    return-void
.end method

.method public getBlockSize(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->getDataSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataSize(Ljava/lang/String;)I
    .registers 7

    const/4 v1, -0x1

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_39

    :goto_19
    return v0

    :catch_1a
    move-exception v0

    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find file:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_19

    :catch_39
    move-exception v0

    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read file:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_19
.end method

.method protected getPrefix()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    const-string v2, "FIXED_DATA_"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->baseFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v0, v4

    new-array v5, v0, [Ljava/lang/String;

    move v0, v1

    move v2, v1

    :goto_10
    array-length v3, v4

    if-ge v0, v3, :cond_37

    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    aget-object v3, v4, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->unMakeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_34

    add-int/lit8 v3, v2, 0x1

    aput-object v6, v5, v2

    move v2, v3

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_37
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public readBlock(Ljava/lang/String;)[B
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-ge v4, v3, :cond_2f

    const-string v3, "Fixed_Persistence_Store"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t read full file:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_32} :catch_52

    :goto_32
    return-object v0

    :catch_33
    move-exception v0

    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find file:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_32

    :catch_52
    move-exception v0

    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read file:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_32
.end method

.method public writeBlock([BLjava/lang/String;)I
    .registers 8

    const/4 v0, -0x1

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    div-int/lit16 v0, v1, 0x1000
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_15} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_38

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    :goto_19
    return v0

    :catch_1a
    move-exception v1

    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write block:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catch_38
    move-exception v1

    const-string v2, "Fixed_Persistence_Store"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write block:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlex/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    const/4 v2, -0x1

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Lcom/googlex/common/io/android/AndroidFixedPersistentStore;->makeFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_15} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    :catch_1a
    move-exception v0

    new-instance v1, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_25
    move-exception v0

    new-instance v1, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
