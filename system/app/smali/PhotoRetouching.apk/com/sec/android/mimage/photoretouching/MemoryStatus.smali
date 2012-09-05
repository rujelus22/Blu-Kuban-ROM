.class public Lcom/sec/android/mimage/photoretouching/MemoryStatus;
.super Ljava/lang/Object;
.source "MemoryStatus.java"


# static fields
.field static final ERROR:I = -0x1

.field public static final MIN_AVAILABLE_MEM_SIZE:I = 0xa00000

.field public static final MIN_SAVE_AVAILABLE_MEM_SIZE:I = 0x100000


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetExternalStorageMount()Z
    .registers 5

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 121
    .local v2, ret:Z
    const/4 v0, 0x0

    .line 122
    .local v0, ExternalStorageAvailable:Z
    const/4 v1, 0x0

    .line 124
    .local v1, ExternalStorageWriteable:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, state:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 128
    const/4 v1, 0x1

    move v0, v1

    .line 139
    .end local v0           #ExternalStorageAvailable:Z
    :goto_11
    if-eqz v1, :cond_23

    .line 140
    const/4 v2, 0x0

    .line 144
    :goto_14
    return v2

    .line 130
    .restart local v0       #ExternalStorageAvailable:Z
    :cond_15
    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 132
    const/4 v0, 0x1

    .line 133
    const/4 v1, 0x0

    goto :goto_11

    .line 136
    :cond_20
    const/4 v1, 0x0

    move v0, v1

    .local v0, ExternalStorageAvailable:I
    goto :goto_11

    .line 142
    .end local v0           #ExternalStorageAvailable:I
    :cond_23
    const/4 v2, 0x1

    goto :goto_14
.end method

.method public static externalMemoryAvailable()Z
    .registers 2

    .prologue
    .line 17
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 18
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 17
    return v0
.end method

.method public static formatSize(J)Ljava/lang/String;
    .registers 8
    .parameter "size"

    .prologue
    const-wide/16 v4, 0x400

    .line 89
    const/4 v2, 0x0

    .line 91
    .local v2, suffix:Ljava/lang/String;
    cmp-long v3, p0, v4

    if-ltz v3, :cond_11

    .line 93
    const-string v2, "KiB"

    .line 94
    div-long/2addr p0, v4

    .line 95
    cmp-long v3, p0, v4

    if-ltz v3, :cond_11

    .line 97
    const-string v2, "MiB"

    .line 98
    div-long/2addr p0, v4

    .line 102
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, resultBuffer:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x3

    .line 105
    .local v0, commaOffset:I
    :goto_20
    if-gtz v0, :cond_2c

    .line 111
    if-eqz v2, :cond_27

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 107
    :cond_2c
    const/16 v3, 0x2c

    invoke-virtual {v1, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v0, v0, -0x3

    goto :goto_20
.end method

.method public static getAvailableExternalMemorySize()J
    .registers 8

    .prologue
    .line 49
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 51
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 52
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 53
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 54
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 56
    .local v0, availableBlocks:J
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 59
    mul-long v6, v0, v2

    .line 63
    :goto_21
    return-wide v6

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v4           #path:Ljava/io/File;
    .end local v5           #stat:Landroid/os/StatFs;
    :cond_22
    const-wide/16 v6, -0x1

    goto :goto_21
.end method

.method public static getAvailableInternalMemorySize()J
    .registers 8

    .prologue
    .line 23
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 24
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 25
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 26
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 28
    .local v0, availableBlocks:J
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 31
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getTotalExternalMemorySize()J
    .registers 8

    .prologue
    .line 69
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 71
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 72
    .local v2, path:Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 74
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 76
    .local v4, totalBlocks:J
    const/4 v2, 0x0

    .line 77
    const/4 v3, 0x0

    .line 79
    mul-long v6, v4, v0

    .line 83
    :goto_21
    return-wide v6

    .end local v0           #blockSize:J
    .end local v2           #path:Ljava/io/File;
    .end local v3           #stat:Landroid/os/StatFs;
    .end local v4           #totalBlocks:J
    :cond_22
    const-wide/16 v6, -0x1

    goto :goto_21
.end method

.method public static getTotalInternalMemorySize()J
    .registers 8

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 37
    .local v2, path:Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 39
    .local v0, blockSize:J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v4, v6

    .line 41
    .local v4, totalBlocks:J
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x0

    .line 44
    mul-long v6, v4, v0

    return-wide v6
.end method
