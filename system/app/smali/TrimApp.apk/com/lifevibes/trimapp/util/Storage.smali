.class public Lcom/lifevibes/trimapp/util/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOutputExtention(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filename"

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createStorageDirs()V
    .registers 3

    .prologue
    .line 59
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard/Input/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a} :catch_15

    .line 65
    .local v0, ex:Ljava/lang/SecurityException;
    :goto_a
    :try_start_a
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard/Output/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_14} :catch_1e

    .line 69
    :goto_14
    return-void

    .line 60
    .end local v0           #ex:Ljava/lang/SecurityException;
    :catch_15
    move-exception v0

    .line 61
    .restart local v0       #ex:Ljava/lang/SecurityException;
    const-string v1, "TrimApp_Storage"

    const-string v2, "Security exception creating input directory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 66
    :catch_1e
    move-exception v0

    .line 67
    const-string v1, "TrimApp_Storage"

    const-string v2, "Security exception creating output directory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public static getOutputFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filename"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/mnt/sdcard/Output/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLowMemory(JLjava/lang/String;)Z
    .registers 12
    .parameter "outputSize"
    .parameter "outputPath"

    .prologue
    .line 80
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 81
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v4, v7

    .line 83
    .local v4, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 85
    .local v0, availableBlocks:J
    mul-long v2, v0, v4

    .line 88
    .local v2, availableSize:J
    const-wide/32 v7, 0xc800000

    add-long/2addr v7, p0

    cmp-long v7, v2, v7

    if-gez v7, :cond_1b

    const/4 v7, 0x1

    :goto_1a
    return v7

    :cond_1b
    const/4 v7, 0x0

    goto :goto_1a
.end method
