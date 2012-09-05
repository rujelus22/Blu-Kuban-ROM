.class public Lcom/sec/android/app/camera/imageviewer/MediaList;
.super Ljava/lang/Object;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "coalesce(date_modified , datetaken) DESC"

.field private static final IMAGE_ORIENTATION:I = 0x5

.field private static final MEDIA_DATA_TAKEN:I = 0x4

.field private static final MEDIA_ID_INDEX:I = 0x0

.field private static final MEDIA_MIME_TYPE_INDEX:I = 0x3

.field private static final MEDIA_PATH_INDEX:I = 0x1

.field private static final MEDIA_TITLE_INDEX:I = 0x2

.field public static final MEDIA_TYPE_IMAGE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x1

.field private static final PROJECTION_IMAGES:[Ljava/lang/String; = null

.field private static final PROJECTION_VIDEOS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaList"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "contentResolver"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    return-void
.end method

.method public static getVideoThumbnail(Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "fd"
    .parameter "width"
    .parameter "height"
    .parameter "autoRotation"

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "filename"
    .parameter "width"
    .parameter "height"
    .parameter "autoRotation"

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "filename"
    .parameter "fd"
    .parameter "width"
    .parameter "height"
    .parameter "autoRotation"

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 295
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 297
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_32

    .line 298
    :try_start_8
    invoke-virtual {v2, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 302
    :goto_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p2, p3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 303
    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 306
    .local v3, rotation:I
    packed-switch v3, :pswitch_data_68

    .line 318
    const/4 v3, 0x0

    .line 321
    :goto_1e
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    if-nez p4, :cond_2e

    if-eqz v3, :cond_2e

    .line 323
    rsub-int v4, v3, 0x168

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_2d} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_2d} :catch_51

    move-result-object v0

    .line 331
    :cond_2e
    :try_start_2e
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_31} :catch_4c

    .line 336
    .end local v3           #rotation:I
    :goto_31
    return-object v0

    .line 300
    :cond_32
    :try_start_32
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_35} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_51

    goto :goto_b

    .line 325
    :catch_36
    move-exception v1

    .line 326
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_37
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_5e

    .line 331
    :try_start_3a
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_31

    .line 332
    :catch_3e
    move-exception v1

    .line 333
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_31

    .line 308
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #rotation:I
    :pswitch_43
    const/16 v3, 0x5a

    .line 309
    goto :goto_1e

    .line 311
    :pswitch_46
    const/16 v3, 0xb4

    .line 312
    goto :goto_1e

    .line 314
    :pswitch_49
    const/16 v3, 0x10e

    .line 315
    goto :goto_1e

    .line 332
    :catch_4c
    move-exception v1

    .line 333
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_31

    .line 327
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .end local v3           #rotation:I
    :catch_51
    move-exception v1

    .line 328
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_52
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5e

    .line 331
    :try_start_55
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_31

    .line 332
    :catch_59
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_31

    .line 330
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_5e
    move-exception v4

    .line 331
    :try_start_5f
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_62} :catch_63

    .line 334
    :goto_62
    throw v4

    .line 332
    :catch_63
    move-exception v1

    .line 333
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_62

    .line 306
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_43
        :pswitch_46
        :pswitch_49
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    .line 197
    :cond_c
    return-void
.end method

.method public deleteFile(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 261
    :cond_11
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    #getter for: Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->id:J
    invoke-static {v0}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->access$000(Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;)J

    move-result-wide v0

    .line 225
    :goto_18
    return-wide v0

    :cond_19
    const-wide/16 v0, -0x1

    goto :goto_18
.end method

.method public getImagePath(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 204
    const-string v0, "MediaList"

    const-string v1, "getImagePath"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->path:Ljava/lang/String;

    .line 209
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getLastContentUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize()V

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 213
    const-string v0, "MediaList"

    const-string v1, "getMimeType"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    .line 218
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getOrientation(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->orientation:I

    .line 253
    :goto_16
    return v0

    :cond_17
    const/4 v0, -0x1

    goto :goto_16
.end method

.method public getTitle(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->title:Ljava/lang/String;

    .line 239
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getType(I)I
    .registers 4
    .parameter "index"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    iget-object v0, v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 232
    :goto_1f
    return v0

    .line 230
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f

    .line 232
    :cond_22
    const/4 v0, -0x1

    goto :goto_1f
.end method

.method public getUri(I)Landroid/net/Uri;
    .registers 5
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getType(I)I

    move-result v2

    if-ne v2, v1, :cond_20

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;->getUri(Z)Landroid/net/Uri;

    move-result-object v0

    .line 246
    :goto_1f
    return-object v0

    .line 244
    :cond_20
    const/4 v1, 0x0

    goto :goto_1b

    .line 246
    :cond_22
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getVideoThumbnail(III)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getImagePath(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, filePath:Ljava/lang/String;
    const/4 v0, 0x0

    .line 272
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 274
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_a
    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 275
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p2, p3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setVideoSize(IIZZ)V

    .line 276
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_17} :catch_21
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_17} :catch_2e

    move-result-object v0

    .line 283
    :try_start_18
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 288
    :goto_1b
    return-object v0

    .line 284
    :catch_1c
    move-exception v1

    .line 285
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1b

    .line 277
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_21
    move-exception v1

    .line 278
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_3b

    .line 283
    :try_start_25
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_1b

    .line 284
    :catch_29
    move-exception v1

    .line 285
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1b

    .line 279
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_2e
    move-exception v1

    .line 280
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3b

    .line 283
    :try_start_32
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_1b

    .line 284
    :catch_36
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1b

    .line 282
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_3b
    move-exception v4

    .line 283
    :try_start_3c
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 286
    :goto_3f
    throw v4

    .line 284
    :catch_40
    move-exception v1

    .line 285
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3f
.end method

.method public initialize()V
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/imageviewer/MediaList;->initialize(Z)V

    .line 75
    return-void
.end method

.method public initialize(Z)V
    .registers 17
    .parameter "bIsSNS"

    .prologue
    .line 77
    const/4 v3, 0x0

    .line 79
    .local v3, where:Ljava/lang/String;
    const/4 v11, 0x0

    .line 81
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .local v14, listAdded:I
    :goto_3
    const/4 v0, 0x2

    if-ge v14, v0, :cond_e1

    .line 82
    if-nez v14, :cond_62

    .line 83
    if-eqz p1, :cond_d

    .line 81
    :cond_a
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 86
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/Camera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (mime_type in (?, ?))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "video/mp4"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "video/3gpp"

    aput-object v1, v4, v0

    .line 96
    .local v4, acceptableVidFormat:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_VIDEOS:[Ljava/lang/String;

    const-string v5, "coalesce(date_modified , datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_55} :catch_10f

    move-result-object v11

    .line 134
    .end local v4           #acceptableVidFormat:[Ljava/lang/String;
    :cond_56
    :goto_56
    if-eqz v11, :cond_a

    .line 136
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_c4

    .line 137
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_a

    .line 104
    :cond_62
    const/4 v0, 0x1

    if-ne v14, v0, :cond_56

    .line 105
    if-eqz p1, :cond_a6

    .line 107
    :try_start_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%ShareShot/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/NullPointerException; {:try_start_67 .. :try_end_83} :catch_10c

    move-result-object v3

    .line 127
    :goto_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND mime_type=\'image/jpeg\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    iget-object v5, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/camera/imageviewer/MediaList;->PROJECTION_IMAGES:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "coalesce(date_modified , datetaken) DESC"

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto :goto_56

    .line 117
    :cond_a6
    :try_start_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/%DCIM/Camera/%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c2
    .catch Ljava/lang/NullPointerException; {:try_start_a6 .. :try_end_c2} :catch_109

    move-result-object v3

    goto :goto_84

    .line 141
    :cond_c4
    const/4 v0, -0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->move(I)Z

    .line 143
    const/4 v12, 0x0

    .local v12, i:I
    :goto_c9
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 144
    new-instance v13, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;

    invoke-direct {v13, p0, v11}, Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;Landroid/database/Cursor;)V

    .line 145
    .local v13, item:Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v12, v12, 0x1

    goto :goto_c9

    .line 148
    .end local v13           #item:Lcom/sec/android/app/camera/imageviewer/MediaList$MediaItem;
    :cond_dc
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 151
    .end local v12           #i:I
    :cond_e1
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 152
    const-string v0, "MediaList"

    const-string v1, "mList is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_f0
    return-void

    .line 155
    :cond_f1
    if-eqz p1, :cond_fe

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/imageviewer/MediaList$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/imageviewer/MediaList$1;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_f0

    .line 171
    :cond_fe
    iget-object v0, p0, Lcom/sec/android/app/camera/imageviewer/MediaList;->mList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/imageviewer/MediaList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/imageviewer/MediaList$2;-><init>(Lcom/sec/android/app/camera/imageviewer/MediaList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_f0

    .line 122
    :catch_109
    move-exception v0

    goto/16 :goto_84

    .line 112
    :catch_10c
    move-exception v0

    goto/16 :goto_84

    .line 101
    :catch_10f
    move-exception v0

    goto/16 :goto_56
.end method
