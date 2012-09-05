.class public Lcom/sec/android/socialhub/util/MemoryStatus;
.super Ljava/lang/Object;
.source "MemoryStatus.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static externalMemoryAvailable()Z
    .registers 2

    .prologue
    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getAvailableExternalAppMemorySize(Landroid/content/Context;)J
    .registers 9
    .parameter "context"

    .prologue
    .line 71
    invoke-static {}, Lcom/sec/android/socialhub/util/MemoryStatus;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 72
    new-instance v4, Ljava/io/File;

    invoke-static {p0}, Lcom/sec/android/socialhub/util/SocialHubFile;->getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 74
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 75
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 76
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    .line 78
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #path:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    :goto_24
    return-wide v6

    :cond_25
    const-wide/16 v6, -0x1

    goto :goto_24
.end method
