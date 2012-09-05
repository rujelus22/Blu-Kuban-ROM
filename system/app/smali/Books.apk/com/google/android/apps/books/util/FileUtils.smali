.class public Lcom/google/android/apps/books/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeBytesOnFilesystem(Ljava/io/File;)J
    .registers 10
    .parameter "file"

    .prologue
    .line 23
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, path:Ljava/lang/String;
    :try_start_4
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_16

    .line 33
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 34
    .local v2, blockSize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 35
    .local v0, availableBlocks:J
    mul-long v7, v2, v0

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v6           #stat:Landroid/os/StatFs;
    :goto_15
    return-wide v7

    .line 27
    :catch_16
    move-exception v4

    .line 30
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-wide/16 v7, 0x0

    goto :goto_15
.end method

.method public static recursiveDelete(Ljava/io/File;)Z
    .registers 4
    .parameter "dir"

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 64
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_24

    .line 65
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 66
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/google/android/apps/books/util/FileUtils;->recursiveDelete(Ljava/io/File;)Z

    .line 64
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 68
    :cond_1e
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1b

    .line 72
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method public static totalSize(Ljava/io/File;)J
    .registers 7
    .parameter "dir"

    .prologue
    .line 45
    const-string v4, "missing dir"

    invoke-static {p0, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const-string v5, "dir not a directory"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    const-wide/16 v2, 0x0

    .line 49
    .local v2, totalSizeInBytes:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, fileList:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    array-length v4, v0

    if-ge v1, v4, :cond_32

    .line 52
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 53
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/google/android/apps/books/util/FileUtils;->totalSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 51
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 55
    :cond_2a
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_27

    .line 58
    :cond_32
    return-wide v2
.end method
