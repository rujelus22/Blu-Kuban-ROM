.class public Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;
.super Lcom/google/mobile/googlenav/common/io/BasePersistentStore;

# interfaces
.implements Lcom/google/mobile/googlenav/common/io/PersistentStore;


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

    invoke-direct {p0}, Lcom/google/mobile/googlenav/common/io/BasePersistentStore;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;->fileLockNames:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    return-void
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


# virtual methods
.method public readBlock(Ljava/lang/String;)[B
    .registers 7

    const/4 v4, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_34
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_2b

    move-result-object v1

    :try_start_b
    iget-object v2, p0, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v2, v0, [B

    invoke-static {p1, v1, v0, v2}, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStoreHelper;->readFully(Ljava/lang/String;Ljava/io/InputStream;I[B)V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_44
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_1b} :catch_49
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_46

    if-eqz v1, :cond_20

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_42

    :cond_20
    :goto_20
    move-object v0, v2

    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    move-object v0, v4

    :goto_24
    if-eqz v0, :cond_29

    :try_start_26
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_3c

    :cond_29
    :goto_29
    move-object v0, v4

    goto :goto_21

    :catch_2b
    move-exception v0

    move-object v0, v4

    :goto_2d
    if-eqz v0, :cond_32

    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3e

    :cond_32
    :goto_32
    move-object v0, v4

    goto :goto_21

    :catchall_34
    move-exception v0

    move-object v1, v4

    :goto_36
    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_40

    :cond_3b
    :goto_3b
    throw v0

    :catch_3c
    move-exception v0

    goto :goto_29

    :catch_3e
    move-exception v0

    goto :goto_32

    :catch_40
    move-exception v1

    goto :goto_3b

    :catch_42
    move-exception v0

    goto :goto_20

    :catchall_44
    move-exception v0

    goto :goto_36

    :catch_46
    move-exception v0

    move-object v0, v1

    goto :goto_2d

    :catch_49
    move-exception v0

    move-object v0, v1

    goto :goto_24
.end method

.method public writeBlock([BLjava/lang/String;)I
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_3
    .catch Lcom/google/mobile/googlenav/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/common/io/PersistentStore$PersistentStoreException;->getType()I

    move-result v0

    goto :goto_4
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mobile/googlenav/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    const/4 v4, -0x1

    if-nez p1, :cond_37

    const/4 v0, 0x0

    :try_start_4
    new-array v0, v0, [B

    :goto_6
    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/mobile/googlenav/common/io/android/AndroidPersistentStore;->makeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x1000
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1c} :catch_21
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1c} :catch_2c

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x1000

    return v0

    :catch_21
    move-exception v0

    new-instance v1, Lcom/google/mobile/googlenav/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/mobile/googlenav/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catch_2c
    move-exception v0

    new-instance v1, Lcom/google/mobile/googlenav/common/io/PersistentStore$PersistentStoreException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lcom/google/mobile/googlenav/common/io/PersistentStore$PersistentStoreException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_37
    move-object v0, p1

    goto :goto_6
.end method
