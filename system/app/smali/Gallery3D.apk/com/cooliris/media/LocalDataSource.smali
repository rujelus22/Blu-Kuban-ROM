.class public Lcom/cooliris/media/LocalDataSource;
.super Ljava/lang/Object;
.source "LocalDataSource.java"

# interfaces
.implements Lcom/cooliris/media/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/LocalDataSource$MimeFilterType;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_BUCKET_ID:I

.field public static final CAMERA_BUCKET_ID:I

.field public static final CAMERA_BUCKET_NAME:Ljava/lang/String;

.field public static final CAMERA_EXT_BUCKET_ID:I

.field public static final CAMERA_EXT_BUCKET_NAME:Ljava/lang/String;

.field public static final DOWNLOAD_BUCKET_ID:I

.field public static final DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

.field public static final URI_ALL_MEDIA:Ljava/lang/String;

.field public static final sThumbnailCache:Lcom/cooliris/media/DiskCache;

.field public static final sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;


# instance fields
.field private final mAllItems:Z

.field private final mBucketId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDiskCache:Lcom/cooliris/media/DiskCache;

.field private mDone:Z

.field private final mFlattenAllItems:Z

.field private mIncludeImages:Z

.field private mIncludeVideos:Z

.field private mMimeFilter:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

.field private mSingUriMimeType:Ljava/lang/String;

.field private final mSingleUri:Z

.field private final mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/LocalDataSource;->URI_ALL_MEDIA:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/cooliris/media/DiskCacheSEC;

    const-string v1, "local-image-thumbs"

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCacheSEC;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    .line 47
    new-instance v0, Lcom/cooliris/media/DiskCache;

    const-string v1, "local-video-thumbs"

    invoke-direct {v0, v1}, Lcom/cooliris/media/DiskCache;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/cooliris/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    .line 63
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/cooliris/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    .line 65
    const-string v0, "bluetooth"

    invoke-static {v0}, Lcom/cooliris/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cooliris/media/LocalDataSource;->BLUETOOTH_BUCKET_ID:I

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cooliris/media/Gallery;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_NAME:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/cooliris/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cooliris/media/LocalDataSource;->CAMERA_EXT_BUCKET_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 10
    .parameter "context"
    .parameter "uri"
    .parameter "flattenAllItems"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    .line 110
    iput-boolean v1, p0, Lcom/cooliris/media/LocalDataSource;->mIncludeImages:Z

    .line 111
    iput-boolean v2, p0, Lcom/cooliris/media/LocalDataSource;->mIncludeVideos:Z

    .line 112
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "bucketId"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, bucketId:Ljava/lang/String;
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_73

    .line 114
    iput-object v0, p0, Lcom/cooliris/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    .line 118
    :goto_22
    iput-boolean p3, p0, Lcom/cooliris/media/LocalDataSource;->mFlattenAllItems:Z

    .line 119
    iget-object v4, p0, Lcom/cooliris/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    if-nez v4, :cond_79

    .line 120
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 121
    iput-boolean v1, p0, Lcom/cooliris/media/LocalDataSource;->mAllItems:Z

    .line 128
    :goto_36
    invoke-static {p2}, Lcom/cooliris/media/LocalDataSource;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    iget-object v4, p0, Lcom/cooliris/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    if-nez v4, :cond_7c

    :goto_40
    iput-boolean v1, p0, Lcom/cooliris/media/LocalDataSource;->mSingleUri:Z

    .line 129
    iput-boolean v2, p0, Lcom/cooliris/media/LocalDataSource;->mDone:Z

    .line 130
    iget-object v1, p0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    iget-object v1, p0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    iget-object v1, p0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    :cond_6a
    sget-object v1, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    :goto_6c
    iput-object v1, p0, Lcom/cooliris/media/LocalDataSource;->mDiskCache:Lcom/cooliris/media/DiskCache;

    .line 134
    sget-object v1, Lcom/cooliris/media/LocalDataSource$MimeFilterType;->MIME_FILTER_NONE:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    iput-object v1, p0, Lcom/cooliris/media/LocalDataSource;->mMimeFilter:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    .line 135
    return-void

    .line 116
    :cond_73
    iput-object v3, p0, Lcom/cooliris/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    goto :goto_22

    .line 123
    :cond_76
    iput-boolean v2, p0, Lcom/cooliris/media/LocalDataSource;->mAllItems:Z

    goto :goto_36

    .line 126
    :cond_79
    iput-boolean v2, p0, Lcom/cooliris/media/LocalDataSource;->mAllItems:Z

    goto :goto_36

    :cond_7c
    move v1, v2

    .line 128
    goto :goto_40

    :cond_7e
    move-object v1, v3

    .line 130
    goto :goto_6c
.end method

.method public static createMediaItemFromFileUri(Landroid/content/Context;Ljava/lang/String;)Lcom/cooliris/media/MediaItem;
    .registers 15
    .parameter "context"
    .parameter "fileUri"

    .prologue
    .line 603
    const/4 v11, 0x0

    .line 606
    .local v11, item:Lcom/cooliris/media/MediaItem;
    const/4 v10, 0x0

    .line 607
    .local v10, filepath:Ljava/lang/String;
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUse_U1_Chn_Open:Z

    if-eqz v1, :cond_a4

    .line 609
    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_12} :catch_96
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_9e

    move-result-object v10

    .line 622
    :goto_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 623
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cooliris/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v6

    .line 624
    .local v6, bucketId:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bucket_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LOWER("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "= LOWER(?) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 627
    .local v3, whereClause:Ljava/lang/String;
    const/4 v8, 0x0

    .line 629
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_55
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/cooliris/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 633
    if-eqz v8, :cond_8e

    .line 634
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 635
    new-instance v12, Lcom/cooliris/media/MediaItem;

    invoke-direct {v12}, Lcom/cooliris/media/MediaItem;-><init>()V
    :try_end_71
    .catchall {:try_start_55 .. :try_end_71} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_71} :catch_bb

    .line 636
    .end local v11           #item:Lcom/cooliris/media/MediaItem;
    .local v12, item:Lcom/cooliris/media/MediaItem;
    :try_start_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v0, v8, v1}, Lcom/cooliris/cache/CacheService;->populateMediaItemFromCursor(Lcom/cooliris/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_71 .. :try_end_8d} :catchall_d2
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8d} :catch_d5

    move-object v11, v12

    .line 644
    .end local v12           #item:Lcom/cooliris/media/MediaItem;
    .restart local v11       #item:Lcom/cooliris/media/MediaItem;
    :cond_8e
    if-eqz v8, :cond_94

    .line 645
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 646
    const/4 v8, 0x0

    :cond_94
    :goto_94
    move-object v12, v11

    .line 649
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v3           #whereClause:Ljava/lang/String;
    .end local v6           #bucketId:J
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #item:Lcom/cooliris/media/MediaItem;
    .restart local v12       #item:Lcom/cooliris/media/MediaItem;
    :goto_95
    return-object v12

    .line 610
    .end local v12           #item:Lcom/cooliris/media/MediaItem;
    .restart local v11       #item:Lcom/cooliris/media/MediaItem;
    :catch_96
    move-exception v9

    .line 611
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 615
    goto/16 :goto_13

    .line 612
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_9e
    move-exception v9

    .line 613
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    move-object v12, v11

    .line 614
    .end local v11           #item:Lcom/cooliris/media/MediaItem;
    .restart local v12       #item:Lcom/cooliris/media/MediaItem;
    goto :goto_95

    .line 618
    .end local v9           #e:Ljava/lang/Exception;
    .end local v12           #item:Lcom/cooliris/media/MediaItem;
    .restart local v11       #item:Lcom/cooliris/media/MediaItem;
    :cond_a4
    new-instance v1, Ljava/io/File;

    const/16 v2, 0x20

    const/16 v4, 0x2b

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_13

    .line 640
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v3       #whereClause:Ljava/lang/String;
    .restart local v6       #bucketId:J
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_bb
    move-exception v9

    .line 642
    .restart local v9       #e:Ljava/lang/Exception;
    :goto_bc
    :try_start_bc
    const-string v1, "LocalDataSource"

    const-string v2, "query exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_ca

    .line 644
    if-eqz v8, :cond_94

    .line 645
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 646
    const/4 v8, 0x0

    goto :goto_94

    .line 644
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_ca
    move-exception v1

    :goto_cb
    if-eqz v8, :cond_d1

    .line 645
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 646
    const/4 v8, 0x0

    :cond_d1
    throw v1

    .line 644
    .end local v11           #item:Lcom/cooliris/media/MediaItem;
    .restart local v12       #item:Lcom/cooliris/media/MediaItem;
    :catchall_d2
    move-exception v1

    move-object v11, v12

    .end local v12           #item:Lcom/cooliris/media/MediaItem;
    .restart local v11       #item:Lcom/cooliris/media/MediaItem;
    goto :goto_cb

    .line 640
    .end local v11           #item:Lcom/cooliris/media/MediaItem;
    .restart local v12       #item:Lcom/cooliris/media/MediaItem;
    :catch_d5
    move-exception v9

    move-object v11, v12

    .end local v12           #item:Lcom/cooliris/media/MediaItem;
    .restart local v11       #item:Lcom/cooliris/media/MediaItem;
    goto :goto_bc
.end method

.method public static createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/cooliris/media/MediaItem;
    .registers 15
    .parameter "context"
    .parameter "target"
    .parameter "mediaType"

    .prologue
    .line 568
    const/4 v10, 0x0

    .line 569
    .local v10, item:Lcom/cooliris/media/MediaItem;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 570
    .local v8, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 571
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, whereClause:Ljava/lang/String;
    const/4 v6, 0x0

    .line 574
    .local v6, cursor:Landroid/database/Cursor;
    if-nez p2, :cond_65

    :try_start_23
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 576
    .local v1, uri:Landroid/net/Uri;
    :goto_25
    if-nez p2, :cond_68

    sget-object v2, Lcom/cooliris/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 578
    .local v2, projection:[Ljava/lang/String;
    :goto_29
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 579
    if-eqz v6, :cond_5b

    .line 580
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 581
    new-instance v11, Lcom/cooliris/media/MediaItem;

    invoke-direct {v11}, Lcom/cooliris/media/MediaItem;-><init>()V
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3c} :catch_6b

    .line 582
    .end local v10           #item:Lcom/cooliris/media/MediaItem;
    .local v11, item:Lcom/cooliris/media/MediaItem;
    :try_start_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v0, v6, v4}, Lcom/cooliris/cache/CacheService;->populateMediaItemFromCursor(Lcom/cooliris/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_3c .. :try_end_56} :catchall_80
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_56} :catch_83

    move-object v10, v11

    .line 585
    .end local v11           #item:Lcom/cooliris/media/MediaItem;
    .restart local v10       #item:Lcom/cooliris/media/MediaItem;
    :cond_57
    :try_start_57
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_6b

    .line 586
    const/4 v6, 0x0

    .line 592
    :cond_5b
    if-eqz v6, :cond_60

    .line 593
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 596
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    :cond_60
    :goto_60
    if-eqz v10, :cond_64

    .line 597
    iput-wide v8, v10, Lcom/cooliris/media/MediaItem;->mId:J

    .line 599
    :cond_64
    return-object v10

    .line 574
    :cond_65
    :try_start_65
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_25

    .line 576
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_68
    sget-object v2, Lcom/cooliris/cache/CacheService;->PROJECTION_VIDEOS:[Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6a} :catch_6b

    goto :goto_29

    .line 588
    .end local v1           #uri:Landroid/net/Uri;
    :catch_6b
    move-exception v7

    .line 590
    .local v7, e:Ljava/lang/Exception;
    :goto_6c
    :try_start_6c
    const-string v4, "LocalDataSource"

    const-string v5, "query exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_79

    .line 592
    if-eqz v6, :cond_60

    .line 593
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_60

    .line 592
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_79
    move-exception v4

    :goto_7a
    if-eqz v6, :cond_7f

    .line 593
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v4

    .line 592
    .end local v10           #item:Lcom/cooliris/media/MediaItem;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v11       #item:Lcom/cooliris/media/MediaItem;
    :catchall_80
    move-exception v4

    move-object v10, v11

    .end local v11           #item:Lcom/cooliris/media/MediaItem;
    .restart local v10       #item:Lcom/cooliris/media/MediaItem;
    goto :goto_7a

    .line 588
    .end local v10           #item:Lcom/cooliris/media/MediaItem;
    .restart local v11       #item:Lcom/cooliris/media/MediaItem;
    :catch_83
    move-exception v7

    move-object v10, v11

    .end local v11           #item:Lcom/cooliris/media/MediaItem;
    .restart local v10       #item:Lcom/cooliris/media/MediaItem;
    goto :goto_6c
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .registers 2
    .parameter "path"

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method private static isImage(Ljava/lang/String;)Z
    .registers 2
    .parameter "uriString"

    .prologue
    .line 298
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isSingleImageMode(Ljava/lang/String;)Z
    .registers 2
    .parameter "uriString"

    .prologue
    .line 155
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private rotateItem(Lcom/cooliris/media/MediaItem;F)V
    .registers 16
    .parameter "item"
    .parameter "angleToRotate"

    .prologue
    .line 529
    iget-object v10, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 531
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_6
    iget v10, p1, Lcom/cooliris/media/MediaItem;->mRotation:F

    float-to-int v1, v10

    .line 532
    .local v1, currentOrientation:I
    int-to-float v10, v1

    add-float/2addr p2, v10

    .line 533
    invoke-static {p2}, Lcom/cooliris/media/Shared;->normalizePositive(F)F

    move-result v5

    .line 534
    .local v5, rotation:F
    float-to-int v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 537
    .local v6, rotationString:Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 538
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "orientation"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_70

    .line 540
    :try_start_1e
    iget-object v10, p1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v9, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1e .. :try_end_29} :catch_67
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_79

    .line 549
    :goto_29
    :try_start_29
    iget-object v10, p1, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 550
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 551
    .local v8, uriScheme:Ljava/lang/String;
    const-string v10, "file"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_43

    const-string v10, "content"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_64

    .line 552
    :cond_43
    const-string v10, "file"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_82

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, path:Ljava/lang/String;
    :goto_4f
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 554
    .local v3, exif:Landroid/media/ExifInterface;
    const-string v10, "Orientation"

    invoke-static {v5}, Lcom/cooliris/media/Shared;->degreesToExifOrientation(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v3}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 560
    .end local v3           #exif:Landroid/media/ExifInterface;
    .end local v4           #path:Ljava/lang/String;
    :cond_64
    iput v5, p1, Lcom/cooliris/media/MediaItem;->mRotation:F

    .line 565
    .end local v1           #currentOrientation:I
    .end local v5           #rotation:F
    .end local v6           #rotationString:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    .end local v8           #uriScheme:Ljava/lang/String;
    .end local v9           #values:Landroid/content/ContentValues;
    :goto_66
    return-void

    .line 541
    .restart local v1       #currentOrientation:I
    .restart local v5       #rotation:F
    .restart local v6       #rotationString:Ljava/lang/String;
    .restart local v9       #values:Landroid/content/ContentValues;
    :catch_67
    move-exception v2

    .line 542
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v10, "LocalDataSource"

    const-string v11, "rotateItem:: SQLiteFullException...."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6f} :catch_70

    goto :goto_29

    .line 561
    .end local v1           #currentOrientation:I
    .end local v2           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v5           #rotation:F
    .end local v6           #rotationString:Ljava/lang/String;
    .end local v9           #values:Landroid/content/ContentValues;
    :catch_70
    move-exception v2

    .line 563
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "LocalDataSource"

    const-string v11, "rotateItem exception"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 543
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #currentOrientation:I
    .restart local v5       #rotation:F
    .restart local v6       #rotationString:Ljava/lang/String;
    .restart local v9       #values:Landroid/content/ContentValues;
    :catch_79
    move-exception v2

    .line 545
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_7a
    const-string v10, "LocalDataSource"

    const-string v11, "update exception"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 552
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v8       #uriScheme:Ljava/lang/String;
    :cond_82
    iget-object v4, p1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_84} :catch_70

    goto :goto_4f
.end method


# virtual methods
.method public getDatabaseUris()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 653
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getThumbnailCache()Lcom/cooliris/media/DiskCache;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cooliris/media/LocalDataSource;->mDiskCache:Lcom/cooliris/media/DiskCache;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isSingleImage()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/cooliris/media/LocalDataSource;->mSingleUri:Z

    return v0
.end method

.method public isSingleUriExistInDB()Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 713
    iget-object v1, p0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    move v8, v0

    .line 740
    :goto_1e
    return v8

    .line 718
    :cond_1f
    const/4 v8, 0x0

    .line 719
    .local v8, result:Z
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 724
    .local v2, projection:[Ljava/lang/String;
    :try_start_27
    iget-object v0, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 725
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_5b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 726
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_52

    .line 727
    const/4 v8, 0x1

    .line 736
    :goto_49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4c} :catch_4d

    goto :goto_1e

    .line 737
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_4d
    move-exception v7

    .line 738
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 729
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_52
    :try_start_52
    const-string v0, "LocalDataSource"

    const-string v1, "Requested file is not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v8, 0x0

    goto :goto_49

    .line 733
    :cond_5b
    const-string v0, "LocalDataSource"

    const-string v1, "Requested file is not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_62} :catch_4d

    .line 734
    const/4 v8, 0x0

    goto :goto_49
.end method

.method public loadItemsForSet(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V
    .registers 29
    .parameter "feed"
    .parameter "parentSet"
    .parameter "rangeStart"
    .parameter "rangeEnd"

    .prologue
    .line 164
    move-object/from16 v0, p2

    iget v5, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    if-lez v5, :cond_d

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/cooliris/media/LocalDataSource;->mDone:Z

    if-eqz v5, :cond_d

    .line 295
    :cond_c
    :goto_c
    return-void

    .line 168
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/cooliris/media/LocalDataSource;->mSingleUri:Z

    if-eqz v5, :cond_197

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/cooliris/media/LocalDataSource;->mDone:Z

    if-nez v5, :cond_197

    .line 169
    new-instance v19, Lcom/cooliris/media/MediaItem;

    invoke-direct/range {v19 .. v19}, Lcom/cooliris/media/MediaItem;-><init>()V

    .line 170
    .local v19, item:Lcom/cooliris/media/MediaItem;
    const-wide/16 v7, 0x0

    move-object/from16 v0, v19

    iput-wide v7, v0, Lcom/cooliris/media/MediaItem;->mId:J

    .line 171
    const-string v5, ""

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 172
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mSingUriMimeType:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v5}, Lcom/cooliris/media/LocalDataSource;->isImage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11e

    const/4 v5, 0x0

    :goto_3d
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/cooliris/media/MediaItem;->setMediaType(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_62

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_121

    .line 177
    :cond_62
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v8

    invoke-static {v5, v7, v8}, Lcom/cooliris/media/LocalDataSource;->createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/cooliris/media/MediaItem;

    move-result-object v21

    .line 179
    .local v21, newItem:Lcom/cooliris/media/MediaItem;
    if-eqz v21, :cond_b9

    .line 180
    move-object/from16 v19, v21

    .line 181
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v18

    .line 182
    .local v18, fileUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cooliris/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/cooliris/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v7

    move-object/from16 v0, p2

    iput-wide v7, v0, Lcom/cooliris/media/MediaSet;->mId:J

    .line 186
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 216
    .end local v18           #fileUri:Ljava/lang/String;
    .end local v21           #newItem:Lcom/cooliris/media/MediaItem;
    :cond_b9
    :goto_b9
    if-eqz v19, :cond_10e

    .line 217
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/MediaFeed;->addItemToMediaSet(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V

    .line 238
    invoke-static/range {v19 .. v19}, Lcom/cooliris/cache/CacheService;->fetchDateTaken(Lcom/cooliris/media/MediaItem;)J

    move-result-wide v16

    .line 239
    .local v16, dateTaken:J
    const-wide/16 v7, -0x1

    cmp-long v5, v16, v7

    if-eqz v5, :cond_d4

    .line 240
    move-wide/from16 v0, v16

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/cooliris/media/MediaItem;->mDateTakenInMs:J

    .line 242
    :cond_d4
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v5

    if-nez v5, :cond_f5

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/cooliris/media/LocalDataSource;->mIncludeImages:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/cooliris/media/LocalDataSource;->mIncludeVideos:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cooliris/media/LocalDataSource;->mMimeFilter:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static/range {v3 .. v10}, Lcom/cooliris/cache/CacheService;->loadMediaItemsIntoMediaFeed(Landroid/content/Context;Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;IIZZLcom/cooliris/media/LocalDataSource$MimeFilterType;)V

    .line 246
    :cond_f5
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v20

    .line 247
    .local v20, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 248
    .local v22, numItems:I
    const/4 v5, 0x1

    move/from16 v0, v22

    if-ne v0, v5, :cond_107

    .line 249
    const/4 v5, 0x1

    move-object/from16 v0, p2

    iput v5, v0, Lcom/cooliris/media/MediaSet;->mNumItemsLoaded:I

    .line 251
    :cond_107
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaSet;->removeDuplicate(Lcom/cooliris/media/MediaItem;)V

    .line 253
    .end local v16           #dateTaken:J
    .end local v20           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v22           #numItems:I
    :cond_10e
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->updateNumExpectedItems()V

    .line 254
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 294
    .end local v19           #item:Lcom/cooliris/media/MediaItem;
    :cond_117
    :goto_117
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/cooliris/media/LocalDataSource;->mDone:Z

    goto/16 :goto_c

    .line 173
    .restart local v19       #item:Lcom/cooliris/media/MediaItem;
    :cond_11e
    const/4 v5, 0x1

    goto/16 :goto_3d

    .line 188
    :cond_121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    const-string v7, "file://"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 189
    const/16 v21, 0x0

    .line 190
    .restart local v21       #newItem:Lcom/cooliris/media/MediaItem;
    const/16 v23, 0xf

    .line 192
    .local v23, numRetries:I
    :cond_131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/cooliris/media/LocalDataSource;->createMediaItemFromFileUri(Landroid/content/Context;Ljava/lang/String;)Lcom/cooliris/media/MediaItem;

    move-result-object v21

    .line 193
    if-nez v21, :cond_146

    .line 194
    add-int/lit8 v23, v23, -0x1

    .line 196
    const-wide/16 v7, 0x1f4

    :try_start_143
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_146
    .catch Ljava/lang/InterruptedException; {:try_start_143 .. :try_end_146} :catch_23f

    .line 200
    :cond_146
    :goto_146
    if-nez v21, :cond_14a

    if-gez v23, :cond_131

    .line 201
    :cond_14a
    if-eqz v21, :cond_150

    .line 202
    move-object/from16 v19, v21

    goto/16 :goto_b9

    .line 204
    :cond_150
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 205
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/cooliris/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 207
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/cooliris/media/MediaFeed;->setSingleImageMode(Z)V

    goto/16 :goto_b9

    .line 210
    .end local v21           #newItem:Lcom/cooliris/media/MediaItem;
    .end local v23           #numRetries:I
    :cond_170
    const-string v5, "LocalDataSource"

    const-string v7, "setSingleImageMode"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 212
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/cooliris/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v5, v0, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 214
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/cooliris/media/MediaFeed;->setSingleImageMode(Z)V

    goto/16 :goto_b9

    .line 255
    .end local v19           #item:Lcom/cooliris/media/MediaItem;
    :cond_197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_222

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/cooliris/media/LocalDataSource;->mFlattenAllItems:Z

    if-eqz v5, :cond_222

    .line 258
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 259
    .local v4, uriImages:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 260
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 261
    .local v6, where:Ljava/lang/String;
    const/4 v15, 0x0

    .line 263
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_1b9
    sget-object v5, Lcom/cooliris/cache/CacheService;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 264
    if-eqz v15, :cond_20c

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_20c

    .line 265
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 267
    :cond_1d2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-eqz v5, :cond_1e2

    .line 268
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_1db
    .catchall {:try_start_1b9 .. :try_end_1db} :catchall_21b
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1db} :catch_213

    .line 286
    if-eqz v15, :cond_c

    .line 287
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    .line 271
    :cond_1e2
    :try_start_1e2
    new-instance v19, Lcom/cooliris/media/MediaItem;

    invoke-direct/range {v19 .. v19}, Lcom/cooliris/media/MediaItem;-><init>()V

    .line 272
    .restart local v19       #item:Lcom/cooliris/media/MediaItem;
    sget-object v5, Lcom/cooliris/cache/CacheService;->BASE_CONTENT_STRING_IMAGES:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v3, v15, v5}, Lcom/cooliris/cache/CacheService;->populateMediaItemFromCursor(Lcom/cooliris/media/MediaItem;Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/MediaFeed;->addItemToMediaSet(Lcom/cooliris/media/MediaItem;Lcom/cooliris/media/MediaSet;)V

    .line 275
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1d2

    .line 276
    if-eqz v15, :cond_203

    .line 277
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 278
    const/4 v15, 0x0

    .line 280
    :cond_203
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/MediaSet;->updateNumExpectedItems()V

    .line 281
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V
    :try_end_20c
    .catchall {:try_start_1e2 .. :try_end_20c} :catchall_21b
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_20c} :catch_213

    .line 286
    .end local v19           #item:Lcom/cooliris/media/MediaItem;
    :cond_20c
    if-eqz v15, :cond_117

    .line 287
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_117

    .line 283
    :catch_213
    move-exception v5

    .line 286
    if-eqz v15, :cond_117

    .line 287
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_117

    .line 286
    :catchall_21b
    move-exception v5

    if-eqz v15, :cond_221

    .line 287
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_221
    throw v5

    .line 291
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #uriImages:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v15           #cursor:Landroid/database/Cursor;
    :cond_222
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/cooliris/media/LocalDataSource;->mIncludeImages:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/cooliris/media/LocalDataSource;->mIncludeVideos:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/LocalDataSource;->mMimeFilter:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {v7 .. v14}, Lcom/cooliris/cache/CacheService;->loadMediaItemsIntoMediaFeed(Landroid/content/Context;Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;IIZZLcom/cooliris/media/LocalDataSource$MimeFilterType;)V

    goto/16 :goto_117

    .line 197
    .restart local v19       #item:Lcom/cooliris/media/MediaItem;
    .restart local v21       #newItem:Lcom/cooliris/media/MediaItem;
    .restart local v23       #numRetries:I
    :catch_23f
    move-exception v5

    goto/16 :goto_146
.end method

.method public loadMediaSets(Lcom/cooliris/media/MediaFeed;)V
    .registers 22
    .parameter "feed"

    .prologue
    .line 302
    const/16 v16, 0x0

    .line 303
    .local v16, set:Lcom/cooliris/media/MediaSet;
    const/4 v13, 0x1

    .line 304
    .local v13, loadOtherSets:Z
    const/4 v10, 0x0

    .line 306
    .local v10, i:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/LocalDataSource;->mSingleUri:Z

    if-eqz v2, :cond_c3

    .line 307
    const-string v2, "LocalDataSource"

    const-string v3, "Single Uri"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cooliris/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 310
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cooliris/media/Utils;->getBucketIdFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)J

    move-result-wide v11

    .line 312
    .local v11, id:J
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v14

    .line 313
    .local v14, mediasets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 315
    .local v8, count:I
    const/4 v10, 0x0

    :goto_42
    if-ge v10, v8, :cond_53

    .line 316
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaSet;

    iget-wide v2, v2, Lcom/cooliris/media/MediaSet;->mId:J

    cmp-long v2, v2, v11

    if-nez v2, :cond_c0

    .line 317
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 323
    :cond_53
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v11, v12, v1}, Lcom/cooliris/media/MediaFeed;->addMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;

    move-result-object v16

    .line 324
    move-object/from16 v0, v16

    iput-object v15, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 325
    move-object/from16 v0, v16

    iput-wide v11, v0, Lcom/cooliris/media/MediaSet;->mId:J

    .line 326
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 327
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 328
    const-wide/16 v2, -0x1

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/LocalDataSource;->getThumbnailCache()Lcom/cooliris/media/DiskCache;

    move-result-object v2

    sget-object v3, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    if-eq v2, v3, :cond_7e

    .line 330
    const/4 v13, 0x0

    .line 332
    :cond_7e
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->moveSetToFront(Lcom/cooliris/media/MediaSet;)V

    .line 364
    .end local v8           #count:I
    .end local v11           #id:J
    .end local v14           #mediasets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .end local v15           #name:Ljava/lang/String;
    :cond_85
    :goto_85
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/LocalDataSource;->mAllItems:Z

    if-nez v2, :cond_bf

    if-eqz v16, :cond_bf

    if-eqz v13, :cond_bf

    .line 365
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v17, v0

    .line 366
    .local v17, setId:J
    invoke-static/range {v17 .. v18}, Lcom/cooliris/cache/CacheService;->isPresentInCache(J)Z

    move-result v2

    if-nez v2, :cond_9e

    .line 367
    invoke-static {}, Lcom/cooliris/cache/CacheService;->markDirty()V

    .line 369
    :cond_9e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/cooliris/media/LocalDataSource;->mIncludeImages:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/cooliris/media/LocalDataSource;->mIncludeVideos:Z

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v7}, Lcom/cooliris/cache/CacheService;->loadMediaSets(Landroid/content/Context;Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/DataSource;ZZZ)V

    .line 373
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/LocalDataSource;->mSingleUri:Z

    if-nez v2, :cond_bf

    .line 374
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->moveSetToFront(Lcom/cooliris/media/MediaSet;)V

    .line 377
    .end local v17           #setId:J
    :cond_bf
    return-void

    .line 315
    .restart local v8       #count:I
    .restart local v11       #id:J
    .restart local v14       #mediasets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .restart local v15       #name:Ljava/lang/String;
    :cond_c0
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 333
    .end local v8           #count:I
    .end local v11           #id:J
    .end local v14           #mediasets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    .end local v15           #name:Ljava/lang/String;
    :cond_c3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    if-nez v2, :cond_162

    .line 335
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/LocalDataSource;->mFlattenAllItems:Z

    if-eqz v2, :cond_136

    .line 336
    const-string v2, "LocalDataSource"

    const-string v3, "mFlattenAllItems"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v3, v1}, Lcom/cooliris/media/MediaFeed;->addMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;

    move-result-object v16

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/LocalDataSource;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cooliris/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/media/LocalDataSource;->getBucketId(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/cooliris/media/MediaSet;->mId:J

    .line 344
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaSet;->setNumExpectedItems(I)V

    .line 345
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 346
    const-wide/16 v2, -0x1

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    goto/16 :goto_85

    .line 348
    :cond_136
    const-string v2, "LocalDataSource"

    const-string v3, "Request CacheService with mime type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-wide/16 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v3, v1}, Lcom/cooliris/media/MediaFeed;->addMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;

    move-result-object v9

    .line 351
    .local v9, dummySet:Lcom/cooliris/media/MediaSet;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/cooliris/media/MediaFeed;->removeMediaSet(Lcom/cooliris/media/MediaSet;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/cooliris/media/LocalDataSource;->mIncludeImages:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/cooliris/media/LocalDataSource;->mIncludeVideos:Z

    const/4 v7, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v7}, Lcom/cooliris/cache/CacheService;->loadMediaSets(Landroid/content/Context;Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/DataSource;ZZZ)V

    goto/16 :goto_85

    .line 357
    .end local v9           #dummySet:Lcom/cooliris/media/MediaSet;
    :cond_162
    const-string v2, "LocalDataSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request CacheService mBucketId ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/LocalDataSource;->mBucketId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1, v3, v4}, Lcom/cooliris/cache/CacheService;->loadMediaSet(Landroid/content/Context;Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/DataSource;J)V

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v19

    .line 360
    .local v19, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    .line 361
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #set:Lcom/cooliris/media/MediaSet;
    check-cast v16, Lcom/cooliris/media/MediaSet;

    .restart local v16       #set:Lcom/cooliris/media/MediaSet;
    goto/16 :goto_85
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
    .registers 27
    .parameter "operation"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 381
    .local p2, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 382
    .local v5, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Lcom/cooliris/media/Gallery;

    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v11

    .line 383
    .local v11, mGridLayer:Lcom/cooliris/media/GridLayer;
    packed-switch p1, :pswitch_data_39a

    .line 525
    :cond_19
    const/16 v20, 0x1

    :goto_1b
    return v20

    .line 385
    :pswitch_1c
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_19

    .line 386
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaBucket;

    .line 387
    .local v4, bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v15, v4, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    .line 388
    .local v15, set:Lcom/cooliris/media/MediaSet;
    iget-object v9, v4, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 389
    .local v9, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-eqz v15, :cond_eb

    if-nez v9, :cond_eb

    .line 392
    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 393
    .local v16, uriImages:Landroid/net/Uri;
    sget-object v17, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 398
    .local v17, uriVideos:Landroid/net/Uri;
    new-instance v20, Ljava/lang/StringBuffer;

    const-string v21, "bucket_id"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    iget-wide v0, v15, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .line 404
    .local v18, whereImages:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    const-string v21, "bucket_id"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    iget-wide v0, v15, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    .line 406
    .local v19, whereVideos:Ljava/lang/String;
    const-string v20, "LocalDataSource"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "whereImages whereVideos"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-wide v0, v15, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v5, v0, v1}, Lcom/cooliris/cache/CacheService;->setHasItemsSize(Landroid/content/ContentResolver;J)I

    move-result v13

    .line 409
    .local v13, mTotalItemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Lcom/cooliris/media/Gallery;

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/cooliris/media/Gallery;->setProgressIncrease(I)V

    .line 411
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 412
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 413
    invoke-static {}, Lcom/cooliris/cache/CacheService;->markDirty()V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/cooliris/cache/CacheService;->deleteDirtyThumbnail(Landroid/content/Context;)V

    .line 415
    if-eqz v11, :cond_eb

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getViewIntent()Z

    move-result v20

    if-eqz v20, :cond_eb

    .line 416
    sget-object v20, Lcom/cooliris/cache/CacheService;->mDirtyFromView:Ljava/util/ArrayList;

    iget-wide v0, v15, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v13           #mTotalItemCount:I
    .end local v16           #uriImages:Landroid/net/Uri;
    .end local v17           #uriVideos:Landroid/net/Uri;
    .end local v18           #whereImages:Ljava/lang/String;
    .end local v19           #whereVideos:Ljava/lang/String;
    :cond_eb
    if-eqz v15, :cond_1f6

    if-eqz v9, :cond_1f6

    .line 421
    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 422
    .restart local v16       #uriImages:Landroid/net/Uri;
    sget-object v17, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 423
    .restart local v17       #uriVideos:Landroid/net/Uri;
    const/16 v18, 0x0

    .line 424
    .restart local v18       #whereImages:Ljava/lang/String;
    const/16 v19, 0x0

    .line 426
    .restart local v19       #whereVideos:Ljava/lang/String;
    :try_start_f7
    new-instance v20, Ljava/lang/StringBuffer;

    const-string v21, "_id"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 428
    .local v12, mImageWhere:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    const-string v21, "_id"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v21, "="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 432
    .local v14, mVideoWhere:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_11a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_26f

    .line 433
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cooliris/media/MediaItem;

    .line 434
    .local v8, item:Lcom/cooliris/media/MediaItem;
    if-nez v8, :cond_12d

    .line 432
    :goto_12a
    add-int/lit8 v10, v10, 0x1

    goto :goto_11a

    .line 438
    :cond_12d
    invoke-virtual {v8}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v20

    if-nez v20, :cond_225

    .line 439
    if-nez v18, :cond_1fa

    .line 440
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v8, Lcom/cooliris/media/MediaItem;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 454
    :goto_150
    rem-int/lit8 v20, v10, 0x64

    if-nez v20, :cond_1b6

    .line 455
    if-eqz v18, :cond_185

    .line 456
    const-string v20, "LocalDataSource"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Where image["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 458
    const/16 v18, 0x0

    .line 461
    :cond_185
    if-eqz v19, :cond_1b6

    .line 462
    const-string v20, "LocalDataSource"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Where video["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    const/16 v19, 0x0

    .line 467
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Lcom/cooliris/media/Gallery;

    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/Gallery;->setProgressIncrease()V
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_1c1} :catch_1c3

    goto/16 :goto_12a

    .line 478
    .end local v8           #item:Lcom/cooliris/media/MediaItem;
    .end local v10           #j:I
    .end local v12           #mImageWhere:Ljava/lang/String;
    .end local v14           #mVideoWhere:Ljava/lang/String;
    :catch_1c3
    move-exception v6

    .line 479
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1c7
    :goto_1c7
    invoke-virtual {v15}, Lcom/cooliris/media/MediaSet;->updateNumExpectedItems()V

    .line 482
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 483
    iget-wide v0, v15, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/cooliris/cache/CacheService;->markDirty(J)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/cooliris/cache/CacheService;->deleteDirtyThumbnail(Landroid/content/Context;)V

    .line 485
    if-eqz v11, :cond_1f6

    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getViewIntent()Z

    move-result v20

    if-eqz v20, :cond_1f6

    .line 486
    sget-object v20, Lcom/cooliris/cache/CacheService;->mDirtyFromView:Ljava/util/ArrayList;

    iget-wide v0, v15, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v16           #uriImages:Landroid/net/Uri;
    .end local v17           #uriVideos:Landroid/net/Uri;
    .end local v18           #whereImages:Ljava/lang/String;
    .end local v19           #whereVideos:Ljava/lang/String;
    :cond_1f6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1d

    .line 442
    .restart local v8       #item:Lcom/cooliris/media/MediaItem;
    .restart local v10       #j:I
    .restart local v12       #mImageWhere:Ljava/lang/String;
    .restart local v14       #mVideoWhere:Ljava/lang/String;
    .restart local v16       #uriImages:Landroid/net/Uri;
    .restart local v17       #uriVideos:Landroid/net/Uri;
    .restart local v18       #whereImages:Ljava/lang/String;
    .restart local v19       #whereVideos:Ljava/lang/String;
    :cond_1fa
    :try_start_1fa
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " or "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v8, Lcom/cooliris/media/MediaItem;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_150

    .line 446
    :cond_225
    if-nez v19, :cond_244

    .line 447
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v8, Lcom/cooliris/media/MediaItem;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_150

    .line 449
    :cond_244
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " or "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-wide v0, v8, Lcom/cooliris/media/MediaItem;->mId:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_150

    .line 470
    .end local v8           #item:Lcom/cooliris/media/MediaItem;
    :cond_26f
    if-eqz v18, :cond_29e

    .line 471
    const-string v20, "LocalDataSource"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Where Image["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 474
    :cond_29e
    if-eqz v19, :cond_1c7

    .line 475
    const-string v20, "LocalDataSource"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Where Video["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2cd
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_2cd} :catch_1c3

    goto/16 :goto_1c7

    .line 492
    .end local v4           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v7           #i:I
    .end local v9           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    .end local v10           #j:I
    .end local v12           #mImageWhere:Ljava/lang/String;
    .end local v14           #mVideoWhere:Ljava/lang/String;
    .end local v15           #set:Lcom/cooliris/media/MediaSet;
    .end local v16           #uriImages:Landroid/net/Uri;
    .end local v17           #uriVideos:Landroid/net/Uri;
    .end local v18           #whereImages:Ljava/lang/String;
    .end local v19           #whereVideos:Ljava/lang/String;
    :pswitch_2cf
    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/cooliris/media/MediaFeed;->mWaitingForRotation:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2e5

    .line 493
    const/16 v20, 0x1

    goto/16 :goto_1b

    .line 495
    :cond_2e5
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2e6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_19

    .line 496
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaBucket;

    .line 497
    .restart local v4       #bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v9, v4, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 498
    .restart local v9       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-nez v9, :cond_2fd

    .line 495
    :goto_2fa
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e6

    :cond_2fd
    move-object/from16 v20, p3

    .line 501
    check-cast v20, Ljava/lang/Float;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 502
    .local v3, angleToRotate:F
    const/16 v20, 0x0

    cmpl-float v20, v3, v20

    if-nez v20, :cond_30f

    .line 503
    const/16 v20, 0x1

    goto/16 :goto_1b

    .line 508
    :cond_30f
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_32e

    .line 510
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cooliris/media/MediaItem;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/cooliris/media/MediaSet;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/cooliris/cache/CacheService;->markDirty(J)V

    .line 513
    :cond_32e
    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mWaitingForRotation:Z

    .line 514
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_33b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_38c

    .line 515
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cooliris/media/MediaItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/cooliris/media/LocalDataSource;->rotateItem(Lcom/cooliris/media/MediaItem;F)V

    .line 516
    const-string v20, "LocalDataSource"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Rotation Item Total ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] Current ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Lcom/cooliris/media/Gallery;

    invoke-virtual/range {v20 .. v20}, Lcom/cooliris/media/Gallery;->setProgressIncrease()V

    .line 514
    add-int/lit8 v10, v10, 0x1

    goto :goto_33b

    .line 519
    :cond_38c
    invoke-virtual {v11}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/cooliris/media/MediaFeed;->mWaitingForRotation:Z

    goto/16 :goto_2fa

    .line 383
    :pswitch_data_39a
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2cf
    .end packed-switch
.end method

.method public refresh(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V
    .registers 14
    .parameter "feed"
    .parameter "databaseUris"

    .prologue
    const/4 v10, 0x1

    .line 661
    iget-object v8, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_34

    iget-object v8, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/cooliris/media/Gallery;

    invoke-virtual {v8}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v8

    if-nez v8, :cond_34

    iget-object v8, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/cooliris/media/Gallery;

    invoke-virtual {v8}, Lcom/cooliris/media/Gallery;->isPickIntent()Z

    move-result v8

    if-nez v8, :cond_34

    iget-object v8, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/cooliris/media/Gallery;

    invoke-virtual {v8}, Lcom/cooliris/media/Gallery;->isMultiplePickIntent()Z

    move-result v8

    if-nez v8, :cond_34

    sget-object v8, Lcom/cooliris/cache/CacheService;->mDirtyFromView:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_34

    .line 664
    invoke-virtual {p0, p1}, Lcom/cooliris/media/LocalDataSource;->loadMediaSets(Lcom/cooliris/media/MediaFeed;)V

    .line 665
    sget-object v8, Lcom/cooliris/cache/CacheService;->mDirtyFromView:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 702
    :cond_33
    :goto_33
    return-void

    .line 668
    :cond_34
    iget-object v8, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    if-nez v8, :cond_40

    .line 669
    const-string v8, "LocalDataSource"

    const-string v9, "refresh : mContext is null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 673
    :cond_40
    iget-object v8, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/cooliris/cache/CacheService;->computeDirtySets(Landroid/content/Context;)[J

    move-result-object v2

    .line 675
    .local v2, ids:[J
    array-length v5, v2

    .line 676
    .local v5, numDirtySets:I
    if-nez v5, :cond_50

    .line 677
    sget v8, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/cooliris/cache/CacheService;->markDirty_nolock(J)V

    goto :goto_33

    .line 680
    :cond_50
    const/4 v1, 0x0

    .local v1, i:I
    :goto_51
    if-ge v1, v5, :cond_33

    .line 681
    aget-wide v6, v2, v1

    .line 682
    .local v6, setId:J
    invoke-virtual {p1, v6, v7}, Lcom/cooliris/media/MediaFeed;->getMediaSet(J)Lcom/cooliris/media/MediaSet;

    move-result-object v8

    if-eqz v8, :cond_71

    .line 683
    invoke-virtual {p1, v6, v7, p0}, Lcom/cooliris/media/MediaFeed;->replaceMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;

    move-result-object v4

    .line 684
    .local v4, newSet:Lcom/cooliris/media/MediaSet;
    iget-object v8, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 685
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, v6, v7}, Lcom/cooliris/cache/CacheService;->getBucketDisplayName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 686
    invoke-virtual {v4, v10}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    .line 680
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v4           #newSet:Lcom/cooliris/media/MediaSet;
    :goto_6e
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 688
    :cond_71
    invoke-virtual {p1, v6, v7, p0}, Lcom/cooliris/media/MediaFeed;->addMediaSet(JLcom/cooliris/media/DataSource;)Lcom/cooliris/media/MediaSet;

    move-result-object v3

    .line 689
    .local v3, mediaSet:Lcom/cooliris/media/MediaSet;
    sget v8, Lcom/cooliris/media/LocalDataSource;->CAMERA_BUCKET_ID:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_84

    .line 690
    const-string v8, "Camera"

    iput-object v8, v3, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    .line 698
    :goto_80
    invoke-virtual {v3, v10}, Lcom/cooliris/media/MediaSet;->generateTitle(Z)V

    goto :goto_6e

    .line 691
    :cond_84
    sget v8, Lcom/cooliris/media/LocalDataSource;->DOWNLOAD_BUCKET_ID:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_90

    .line 692
    const-string v8, "download"

    iput-object v8, v3, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    goto :goto_80

    .line 694
    :cond_90
    iget-object v8, p0, Lcom/cooliris/media/LocalDataSource;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 695
    .restart local v0       #cr:Landroid/content/ContentResolver;
    invoke-static {v0, v6, v7}, Lcom/cooliris/cache/CacheService;->getBucketDisplayName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/cooliris/media/MediaSet;->mName:Ljava/lang/String;

    goto :goto_80
.end method

.method public setMimeFilter(ZZ)V
    .registers 3
    .parameter "includeImages"
    .parameter "includeVideos"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/cooliris/media/LocalDataSource;->mIncludeImages:Z

    .line 139
    iput-boolean p2, p0, Lcom/cooliris/media/LocalDataSource;->mIncludeVideos:Z

    .line 140
    return-void
.end method

.method public setMimeTypeFilter(Lcom/cooliris/media/LocalDataSource$MimeFilterType;)V
    .registers 2
    .parameter "mMimeFilter"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/cooliris/media/LocalDataSource;->mMimeFilter:Lcom/cooliris/media/LocalDataSource$MimeFilterType;

    .line 144
    return-void
.end method

.method public setSingleUriMimeType(Ljava/lang/String;)V
    .registers 2
    .parameter "mMimeType"

    .prologue
    .line 709
    iput-object p1, p0, Lcom/cooliris/media/LocalDataSource;->mSingUriMimeType:Ljava/lang/String;

    .line 710
    return-void
.end method

.method public shutdown()V
    .registers 1

    .prologue
    .line 148
    return-void
.end method
