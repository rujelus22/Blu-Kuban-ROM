.class public Lcom/googlex/common/io/android/AndroidPersistentStore;
.super Lcom/googlex/common/io/BasePersistentStore;

# interfaces
.implements Lcom/googlex/common/io/PersistentStore;
.implements Lcom/googlex/common/io/ProcessLockProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/common/io/android/AndroidPersistentStore$AndroidFileLock;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x1000

.field private static final PREFIX:Ljava/lang/String; = "DATA_"


# instance fields
.field private context:Landroid/content/Context;

.field private final fileLockNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/googlex/common/io/BasePersistentStore;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    iput-object p1, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/googlex/common/io/android/AndroidPersistentStore;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/FileOutputStream;)Z
    .registers 2

    invoke-static {p0}, Lcom/googlex/common/io/android/AndroidPersistentStore;->closeFileOutputStreamSilently(Ljava/io/FileOutputStream;)Z

    move-result v0

    return v0
.end method

.method private static closeFileOutputStreamSilently(Ljava/io/FileOutputStream;)Z
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static makeFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DATA_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static unMakeFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "DATA_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public deleteAllBlocks(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v2, v1, v0

    if-nez v2, :cond_18

    :cond_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_18
    aget-object v2, v1, v0

    invoke-static {p1}, Lcom/googlex/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_15
.end method

.method public deleteBlock(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/googlex/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

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

    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/googlex/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;

    const-string v1, "Delete failed."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_15
    return-void
.end method

.method public getBlockSize(Ljava/lang/String;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/android/AndroidPersistentStore;->getDataSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataSize(Ljava/lang/String;)I
    .registers 5

    const/4 v1, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/googlex/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1e

    :goto_1a
    return v0

    :catch_1b
    move-exception v0

    move v0, v1

    goto :goto_1a

    :catch_1e
    move-exception v0

    move v0, v1

    goto :goto_1a
.end method

.method public listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    new-array v5, v0, [Ljava/lang/String;

    move v0, v1

    move v2, v1

    :goto_c
    array-length v3, v4

    if-ge v0, v3, :cond_25

    aget-object v3, v4, v0

    invoke-static {v3}, Lcom/googlex/common/io/android/AndroidPersistentStore;->unMakeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    add-int/lit8 v3, v2, 0x1

    aput-object v6, v5, v2

    move v2, v3

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_25
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public lock(Ljava/lang/String;)Lcom/googlex/common/io/ProcessLock;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/googlex/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    monitor-enter v4

    :try_start_8
    iget-object v1, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    monitor-exit v4
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_31

    :goto_11
    return-object v0

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_31
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_29
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_12 .. :try_end_18} :catch_39
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_12 .. :try_end_18} :catch_34

    move-result-object v2

    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v5

    new-instance v1, Lcom/googlex/common/io/android/AndroidPersistentStore$AndroidFileLock;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/googlex/common/io/android/AndroidPersistentStore$AndroidFileLock;-><init>(Lcom/googlex/common/io/android/AndroidPersistentStore;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_31
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_26} :catch_3e
    .catch Ljava/nio/channels/NonWritableChannelException; {:try_start_19 .. :try_end_26} :catch_3c
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_19 .. :try_end_26} :catch_37

    :try_start_26
    monitor-exit v4

    move-object v0, v1

    goto :goto_11

    :catch_29
    move-exception v1

    move-object v1, v0

    :goto_2b
    move-object v2, v1

    :goto_2c
    invoke-static {v2}, Lcom/googlex/common/io/android/AndroidPersistentStore;->closeFileOutputStreamSilently(Ljava/io/FileOutputStream;)Z

    monitor-exit v4

    goto :goto_11

    :catchall_31
    move-exception v0

    monitor-exit v4
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_31

    throw v0

    :catch_34
    move-exception v1

    move-object v2, v0

    goto :goto_2c

    :catch_37
    move-exception v1

    goto :goto_2c

    :catch_39
    move-exception v1

    move-object v2, v0

    goto :goto_2c

    :catch_3c
    move-exception v1

    goto :goto_2c

    :catch_3e
    move-exception v1

    move-object v1, v2

    goto :goto_2b
.end method

.method public readBlock(Ljava/lang/String;)[B
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/googlex/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-ge v4, v3, :cond_18

    :cond_18
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1f

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    move-object v0, v1

    goto :goto_1b

    :catch_1f
    move-exception v0

    move-object v0, v1

    goto :goto_1b
.end method

.method public tryLock(Ljava/lang/String;)Lcom/googlex/common/io/ProcessLock;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/googlex/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    monitor-enter v4

    :try_start_8
    iget-object v1, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    monitor-exit v4
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_33

    :goto_11
    return-object v0

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_33
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_2b
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_12 .. :try_end_18} :catch_36

    move-result-object v2

    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v5

    if-eqz v5, :cond_2e

    new-instance v1, Lcom/googlex/common/io/android/AndroidPersistentStore$AndroidFileLock;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/googlex/common/io/android/AndroidPersistentStore$AndroidFileLock;-><init>(Lcom/googlex/common/io/android/AndroidPersistentStore;Ljava/io/FileOutputStream;Ljava/nio/channels/FileLock;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_33
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_3b
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_19 .. :try_end_28} :catch_39

    :try_start_28
    monitor-exit v4

    move-object v0, v1

    goto :goto_11

    :catch_2b
    move-exception v1

    move-object v1, v0

    :goto_2d
    move-object v2, v1

    :cond_2e
    :goto_2e
    invoke-static {v2}, Lcom/googlex/common/io/android/AndroidPersistentStore;->closeFileOutputStreamSilently(Ljava/io/FileOutputStream;)Z

    monitor-exit v4

    goto :goto_11

    :catchall_33
    move-exception v0

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v0

    :catch_36
    move-exception v1

    move-object v2, v0

    goto :goto_2e

    :catch_39
    move-exception v1

    goto :goto_2e

    :catch_3b
    move-exception v1

    move-object v1, v2

    goto :goto_2d
.end method

.method public writeBlock([BLjava/lang/String;)I
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/googlex/common/io/android/AndroidPersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_3
    .catch Lcom/googlex/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v0

    goto :goto_4
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlex/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    const/4 v3, -0x1

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :try_start_4
    new-array p1, v0, [B

    :cond_6
    iget-object v0, p0, Lcom/googlex/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/googlex/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1000
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1c} :catch_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_2c

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    :catch_21
    move-exception v0

    new-instance v1, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_2c
    move-exception v0

    new-instance v1, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/googlex/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
