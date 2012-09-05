.class public Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;
.super Ljava/lang/Object;
.source "VideoThumbnailUtil.java"


# static fields
.field private static final SAVED_THUMBS_DIR:Ljava/lang/String; = "/data/data/com.sec.android.app.videoplayer/cached_bitmaps"

.field private static final SAVED_THUMBS_PATH:Ljava/lang/String; = "/data/data/com.sec.android.app.videoplayer/cached_bitmaps/"

.field private static final TAG:Ljava/lang/String; = "VideoThumbnailUtil"

.field private static mThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/videoplayer/util/VideoThumb;",
            ">;"
        }
    .end annotation
.end field

.field private static mVideoThumbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/videoplayer/util/VideoThumb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mThumbnail:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mVideoThumbList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized clearThumbnailHashmap()V
    .registers 2

    .prologue
    .line 42
    const-class v1, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mThumbnail:Ljava/util/HashMap;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 44
    monitor-exit v1

    return-void

    .line 42
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clearThumbnailStuffs()V
    .registers 2

    .prologue
    .line 36
    const-class v1, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->clearThumbnailHashmap()V

    .line 37
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->clearVideoThumbs()V

    .line 38
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->clearUnusedCachedBitmaps()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 39
    monitor-exit v1

    return-void

    .line 36
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized clearUnusedCachedBitmaps()V
    .registers 14

    .prologue
    .line 70
    const-class v11, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v11

    :try_start_3
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/data/com.sec.android.app.videoplayer/cached_bitmaps"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, folder:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_19

    .line 73
    const-string v10, "VideoThumbnailUtil"

    const-string v12, "clearUnusedCachedBitmaps() - folder not exist. no need to clear."

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_d2

    .line 124
    :cond_17
    :goto_17
    monitor-exit v11

    return-void

    .line 77
    :cond_19
    :try_start_19
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 78
    .local v0, childFiles:[Ljava/io/File;
    array-length v8, v0

    .line 79
    .local v8, size:I
    const/4 v1, 0x0

    .line 81
    .local v1, counts:I
    if-lez v8, :cond_17

    .line 82
    const/4 v5, 0x0

    .local v5, i:I
    :goto_22
    if-ge v5, v8, :cond_b2

    .line 83
    const/4 v7, -0x1

    .line 84
    .local v7, index:I
    const/4 v6, -0x1

    .line 85
    .local v6, id:I
    const/4 v2, 0x0

    .line 86
    .local v2, fileName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 87
    .local v3, filePath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 89
    .local v9, temp:Ljava/lang/String;
    aget-object v10, v0, v5

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_a6

    .line 92
    const/16 v10, 0x5f

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 93
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 94
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    if-eqz v9, :cond_48

    .line 97
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 99
    :cond_48
    const/4 v10, -0x1

    if-eq v6, v10, :cond_a6

    .line 100
    invoke-static {}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getInstance()Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v10

    int-to-long v12, v6

    invoke-virtual {v10, v12, v13}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v3

    .line 102
    if-eqz v3, :cond_aa

    .line 103
    const/16 v10, 0x2f

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 104
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a6

    .line 107
    aget-object v10, v0, v5

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 108
    const-string v10, "VideoThumbnailUtil"

    const-string v12, "clearUnusedCachedBitmaps() - delete unused bitmap file!!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v10, "VideoThumbnailUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clearUnusedCachedBitmaps() - id - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v10, "VideoThumbnailUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clearUnusedCachedBitmaps() - fileName From cached bitmap - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 82
    :cond_a6
    :goto_a6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_22

    .line 116
    :cond_aa
    aget-object v10, v0, v5

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_a6

    .line 122
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #id:I
    .end local v7           #index:I
    .end local v9           #temp:Ljava/lang/String;
    :cond_b2
    const-string v10, "VideoThumbnailUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "clearUnusedCachedBitmaps() - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " file(s) are deleted."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_19 .. :try_end_d0} :catchall_d2

    goto/16 :goto_17

    .line 70
    .end local v0           #childFiles:[Ljava/io/File;
    .end local v1           #counts:I
    .end local v5           #i:I
    .end local v8           #size:I
    :catchall_d2
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private static declared-synchronized clearVideoThumbs()V
    .registers 7

    .prologue
    .line 47
    const-class v4, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v4

    const/4 v2, 0x0

    .line 48
    .local v2, videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    const/4 v0, 0x0

    .line 49
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    :try_start_6
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mVideoThumbList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4b

    .line 50
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mVideoThumbList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    check-cast v2, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 51
    .restart local v2       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-eqz v2, :cond_48

    .line 52
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_29

    .line 54
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_29

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    const/4 v0, 0x0

    .line 61
    :cond_29
    const/4 v2, 0x0

    .line 62
    const-string v3, "VideoThumbnailUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recycleBitmaps() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitmap recycled."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 65
    :cond_4b
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mVideoThumbList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 66
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mVideoThumbList:Ljava/util/ArrayList;
    :try_end_53
    .catchall {:try_start_6 .. :try_end_53} :catchall_55

    .line 67
    monitor-exit v4

    return-void

    .line 47
    .end local v2           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :catchall_55
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized createCachedBitmapsFolder()V
    .registers 3

    .prologue
    .line 163
    const-class v2, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v2

    :try_start_3
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.sec.android.app.videoplayer/cached_bitmaps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_13

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 167
    :cond_13
    monitor-exit v2

    return-void

    .line 163
    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getCacheBitmapFilePath(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "id"
    .parameter "fileName"

    .prologue
    .line 170
    const-class v1, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.sec.android.app.videoplayer/cached_bitmaps/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_22

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getHashmapBitmaps(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "filePath"

    .prologue
    .line 127
    const-class v3, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v3

    const/4 v0, 0x0

    .line 129
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_4
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mThumbnail:Ljava/util/HashMap;

    if-nez v2, :cond_f

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mThumbnail:Ljava/util/HashMap;

    .line 132
    :cond_f
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 134
    .local v1, videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-eqz v1, :cond_1d

    .line 135
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1f

    move-result-object v0

    .line 138
    :cond_1d
    monitor-exit v3

    return-object v0

    .line 127
    .end local v1           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :catchall_1f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getThumbnailHashmap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/videoplayer/util/VideoThumb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    const-class v1, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mThumbnail:Ljava/util/HashMap;

    if-nez v0, :cond_e

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mThumbnail:Ljava/util/HashMap;

    .line 26
    :cond_e
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mThumbnail:Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getVideoThumbList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/videoplayer/util/VideoThumb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    const-class v1, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mVideoThumbList:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mVideoThumbList:Ljava/util/ArrayList;

    .line 32
    :cond_e
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->mVideoThumbList:Ljava/util/ArrayList;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveBitmapCacheFile(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 9
    .parameter "bitmapPath"
    .parameter "thumb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    const-class v5, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;

    monitor-enter v5

    const/4 v2, 0x0

    .line 145
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 147
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_2d

    .line 148
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_14
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v4, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_4a

    :cond_21
    move-object v2, v3

    .line 154
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_22
    if-eqz v2, :cond_2a

    .line 155
    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_3a

    .line 159
    .end local v1           #f:Ljava/io/File;
    :cond_2a
    :goto_2a
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .line 151
    :catch_2d
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3d

    .line 154
    if-eqz v2, :cond_2a

    .line 155
    :try_start_33
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_3a

    goto :goto_2a

    .line 143
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3a
    move-exception v4

    monitor-exit v5

    throw v4

    .line 154
    :catchall_3d
    move-exception v4

    :goto_3e
    if-eqz v2, :cond_46

    .line 155
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_46
    throw v4
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3a

    .line 154
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catchall_47
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_3e

    .line 151
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4a
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_2e
.end method
