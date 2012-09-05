.class public Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;
.super Lcom/google/android/music/dl/cache/CacheStrategy;
.source "FillUpToLimitCacheStrategy.java"


# instance fields
.field private final mFileSys:Lcom/google/android/music/dl/FileSystem;

.field private final mMaxSizeToUse:J

.field private final mPercentToUse:F

.field private final mStore:Lcom/google/android/music/store/Store;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/FileSystem;Lcom/google/android/music/store/Store;FJ)V
    .registers 6
    .parameter "fileSystem"
    .parameter "store"
    .parameter "percentToUse"
    .parameter "maxSizeToUse"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheStrategy;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mStore:Lcom/google/android/music/store/Store;

    .line 28
    iput-object p1, p0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 29
    iput-wide p4, p0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mMaxSizeToUse:J

    .line 30
    iput p3, p0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mPercentToUse:F

    .line 31
    return-void
.end method


# virtual methods
.method public findSpaceForCacheFile(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;)J
    .registers 20
    .parameter "order"
    .parameter "location"

    .prologue
    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 37
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Should not call findSpace for keep on files"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 40
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v5

    .line 41
    .local v5, freeSize:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mStore:Lcom/google/android/music/store/Store;

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/google/android/music/store/Store;->getTotalCachedSize(I)J

    move-result-wide v3

    .line 44
    .local v3, cacheUsedSize:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Lcom/google/android/music/dl/FileSystem;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v11

    .line 46
    .local v11, totalSpace:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v13

    add-long v7, v3, v13

    .line 48
    .local v7, newSpaceIfNoDelete:J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mPercentToUse:F

    long-to-float v14, v11

    mul-float/2addr v13, v14

    float-to-long v13, v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/music/dl/cache/FillUpToLimitCacheStrategy;->mMaxSizeToUse:J

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 51
    .local v1, allowedToUse:J
    cmp-long v13, v7, v1

    if-lez v13, :cond_48

    .line 52
    sub-long v9, v7, v1

    .line 59
    .local v9, requiredSpace:J
    :goto_47
    return-wide v9

    .line 53
    .end local v9           #requiredSpace:J
    :cond_48
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v13

    cmp-long v13, v13, v5

    if-lez v13, :cond_57

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/dl/DownloadOrder;->getLength()J

    move-result-wide v13

    sub-long v9, v13, v5

    .restart local v9       #requiredSpace:J
    goto :goto_47

    .line 56
    .end local v9           #requiredSpace:J
    :cond_57
    const-wide/16 v9, 0x0

    .restart local v9       #requiredSpace:J
    goto :goto_47
.end method
