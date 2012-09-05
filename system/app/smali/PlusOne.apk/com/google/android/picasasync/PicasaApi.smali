.class final Lcom/google/android/picasasync/PicasaApi;
.super Ljava/lang/Object;
.source "PicasaApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/PicasaApi$EntryHandler;
    }
.end annotation


# instance fields
.field private final mBaseUrl:Ljava/lang/String;

.field private final mClient:Lcom/google/android/picasasync/GDataClient;

.field private final mOperation:Lcom/google/android/picasasync/GDataClient$Operation;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 4
    .parameter "resolver"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Lcom/google/android/picasasync/GDataClient$Operation;

    invoke-direct {v1}, Lcom/google/android/picasasync/GDataClient$Operation;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mOperation:Lcom/google/android/picasasync/GDataClient$Operation;

    .line 55
    new-instance v1, Lcom/google/android/picasasync/GDataClient;

    invoke-direct {v1}, Lcom/google/android/picasasync/GDataClient;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    .line 56
    const-string v1, "picasa_gdata_base_url"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, baseUrl:Ljava/lang/String;
    if-nez v0, :cond_1b

    const-string v0, "https://picasaweb.google.com/data/feed/api/"

    .end local v0           #baseUrl:Ljava/lang/String;
    :cond_1b
    iput-object v0, p0, Lcom/google/android/picasasync/PicasaApi;->mBaseUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 7
    .parameter "imageUrl"
    .parameter "maxSide"
    .parameter "centerCropped"

    .prologue
    .line 277
    invoke-static {p0}, Lcom/google/android/picasasync/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 278
    invoke-static {p0}, Lcom/google/android/picasasync/FIFEUtil;->getImageUrlOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 279
    .local v1, hasI:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v2, 0x73

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    if-eqz p2, :cond_25

    const-string v2, "-c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_25
    if-eqz v1, :cond_2c

    const-string v2, "-I"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/picasasync/FIFEUtil;->setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #hasI:Z
    :goto_38
    return-object v2

    .line 285
    :cond_39
    if-eqz p2, :cond_42

    .line 286
    const-string v2, "PicasaAPI"

    const-string v3, "not a FIFE url, ignore the crop option"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_42
    invoke-static {p1, p0}, Lcom/google/android/picasasync/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_38
.end method

.method private static encodeUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "username"

    .prologue
    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 268
    const-string v0, "@gmail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "@googlemail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 271
    :cond_14
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 273
    :cond_1f
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/PhotoCollectorJson;)I
    .registers 15
    .parameter "album"
    .parameter "handler"
    .parameter "url"
    .parameter "apiName"
    .parameter "parser"

    .prologue
    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PicasaApi."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 191
    .local v2, statsId:I
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for %s / %s, etag: %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/google/android/picasasync/AlbumEntry;->user:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v7, p1, Lcom/google/android/picasasync/AlbumEntry;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v7}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_51
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mOperation:Lcom/google/android/picasasync/GDataClient$Operation;

    .line 197
    .local v1, operation:Lcom/google/android/picasasync/GDataClient$Operation;
    iget-object v3, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v3, p3, v1}, Lcom/google/android/picasasync/GDataClient;->get(Ljava/lang/String;Lcom/google/android/picasasync/GDataClient$Operation;)V
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5c} :catch_d3

    .line 200
    :try_start_5c
    iget v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    sparse-switch v3, :sswitch_data_108

    .line 214
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_5c .. :try_end_7f} :catchall_cc

    .line 215
    const/4 v3, 0x3

    .line 218
    :try_start_80
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_85} :catch_d3

    .line 225
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    .end local v1           #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :goto_8f
    return v3

    .line 203
    .restart local v1       #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :sswitch_90
    :try_start_90
    iget-object v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    iput-object v3, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 205
    iget-object v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-virtual {p5, v3}, Lcom/google/android/picasasync/PhotoCollectorJson;->parse(Ljava/io/InputStream;)V
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_cc

    .line 206
    const/4 v3, 0x0

    .line 218
    :try_start_9a
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9f} :catch_d3

    .line 225
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_8f

    .line 209
    :sswitch_aa
    const/4 v3, 0x1

    .line 218
    :try_start_ab
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b0} :catch_d3

    .line 225
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_8f

    .line 212
    :sswitch_bb
    const/4 v3, 0x2

    .line 218
    :try_start_bc
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_c1
    .catchall {:try_start_bc .. :try_end_c1} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c1} :catch_d3

    .line 225
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_8f

    .line 218
    :catchall_cc
    move-exception v3

    :try_start_cd
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_d3
    .catchall {:try_start_cd .. :try_end_d3} :catchall_fb
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d3} :catch_d3

    .line 220
    .end local v1           #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :catch_d3
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    :try_start_d4
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->handleInterrruptedException(Ljava/lang/Throwable;)Z

    .line 222
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ef
    .catchall {:try_start_d4 .. :try_end_ef} :catchall_fb

    .line 223
    const/4 v3, 0x3

    .line 225
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_8f

    .line 225
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_fb
    move-exception v3

    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {v2}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    throw v3

    .line 200
    nop

    :sswitch_data_108
    .sparse-switch
        0xc8 -> :sswitch_90
        0x130 -> :sswitch_aa
        0x191 -> :sswitch_bb
        0x193 -> :sswitch_bb
    .end sparse-switch
.end method


# virtual methods
.method public getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I
    .registers 9
    .parameter "album"
    .parameter "handler"

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/picasasync/AlbumEntry;->user:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaApi;->encodeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/albumid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/picasasync/AlbumEntry;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?max-results=1000&imgmax=d&thumbsize=640u&visibility=visible&v=4&alt=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&fd=shapes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&kind=photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, url:Ljava/lang/String;
    const-string v4, "getAlbumPhotos"

    new-instance v5, Lcom/google/android/picasasync/PhotoCollectorJson;

    invoke-direct {v5, p2}, Lcom/google/android/picasasync/PhotoCollectorJson;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/picasasync/PicasaApi;->getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/PhotoCollectorJson;)I

    move-result v0

    return v0
.end method

.method public getAlbums(Lcom/google/android/picasasync/UserEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I
    .registers 16
    .parameter "user"
    .parameter "handler"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    const-string v8, "PicasaApi.getAlbums"

    invoke-static {v8}, Lcom/google/android/picasasync/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v3

    .line 69
    .local v3, statsId:I
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/google/android/picasasync/PicasaApi;->mBaseUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "user/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/picasasync/PicasaApi;->encodeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?max-results=1000&imgmax=d&thumbsize=640u&visibility=visible&v=4&alt=json"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&fd=shapes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&kind=album"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    .local v0, builder:Ljava/lang/StringBuilder;
    :try_start_33
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaApi;->mOperation:Lcom/google/android/picasasync/GDataClient$Operation;

    .line 78
    .local v2, operation:Lcom/google/android/picasasync/GDataClient$Operation;
    iget-object v8, p1, Lcom/google/android/picasasync/UserEntry;->albumsEtag:Ljava/lang/String;

    iput-object v8, v2, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 79
    const-string v8, "PicasaAPI"

    const-string v9, "getAlbums for %s, etag = %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Lcom/google/android/picasasync/UserEntry;->account:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/google/android/picasasync/UserEntry;->albumsEtag:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/google/android/picasasync/GDataClient;->get(Ljava/lang/String;Lcom/google/android/picasasync/GDataClient$Operation;)V
    :try_end_5e
    .catchall {:try_start_33 .. :try_end_5e} :catchall_116
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5e} :catch_ff

    .line 83
    :try_start_5e
    iget v8, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    sparse-switch v8, :sswitch_data_122

    .line 97
    const-string v4, "PicasaAPI"

    const-string v5, "    getAlbums fail - uri: %s, status code: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    iget v9, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_5e .. :try_end_85} :catchall_f8

    .line 102
    :try_start_85
    iget-object v4, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_116
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8a} :catch_ff

    .line 110
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    move v4, v7

    .end local v2           #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :goto_95
    return v4

    .line 85
    .restart local v2       #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :sswitch_96
    :try_start_96
    iget-object v5, v2, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    iput-object v5, p1, Lcom/google/android/picasasync/UserEntry;->albumsEtag:Ljava/lang/String;

    .line 86
    new-instance v5, Lcom/google/android/picasasync/AlbumCollectorJson;

    invoke-direct {v5, p2}, Lcom/google/android/picasasync/AlbumCollectorJson;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    iget-object v6, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/AlbumCollectorJson;->parse(Ljava/io/InputStream;)V
    :try_end_a4
    .catchall {:try_start_96 .. :try_end_a4} :catchall_f8

    .line 102
    :try_start_a4
    iget-object v5, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_116
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a9} :catch_ff

    .line 110
    const-string v5, "PicasaAPI"

    const-string v6, "   done"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    goto :goto_95

    .line 102
    :sswitch_b4
    :try_start_b4
    iget-object v4, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_116
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b9} :catch_ff

    .line 110
    const-string v4, "PicasaAPI"

    const-string v6, "   done"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    move v4, v5

    goto :goto_95

    .line 93
    :sswitch_c5
    :try_start_c5
    const-string v4, "PicasaAPI"

    const-string v5, "    getAlbums fail - uri: %s, status code: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_c5 .. :try_end_e7} :catchall_f8

    .line 102
    :try_start_e7
    iget-object v4, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_ec
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_116
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ec} :catch_ff

    .line 110
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    move v4, v6

    goto :goto_95

    .line 102
    :catchall_f8
    move-exception v4

    :try_start_f9
    iget-object v5, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_ff
    .catchall {:try_start_f9 .. :try_end_ff} :catchall_116
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_ff} :catch_ff

    .line 105
    .end local v2           #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :catch_ff
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/Exception;
    :try_start_100
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->handleInterrruptedException(Ljava/lang/Throwable;)Z

    .line 107
    const-string v4, "PicasaAPI"

    const-string v5, "getAlbums fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_116

    .line 110
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    move v4, v7

    goto :goto_95

    .line 110
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_116
    move-exception v4

    const-string v5, "PicasaAPI"

    const-string v6, "   done"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v3}, Lcom/google/android/picasasync/MetricsUtils;->end(I)V

    throw v4

    .line 83
    :sswitch_data_122
    .sparse-switch
        0xc8 -> :sswitch_96
        0x130 -> :sswitch_b4
        0x191 -> :sswitch_c5
        0x193 -> :sswitch_c5
    .end sparse-switch
.end method

.method public getUploadedPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I
    .registers 13
    .parameter "pseudoAlbum"
    .parameter "handler"

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/picasasync/AlbumEntry;->user:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/picasasync/PicasaApi;->encodeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?max-results=1000&imgmax=d&thumbsize=640u&visibility=visible&v=4&alt=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&kind=photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&streamid=camera_sync_created"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, baseUrl:Ljava/lang/String;
    new-instance v5, Lcom/google/android/picasasync/PhotoCollectorJson;

    invoke-direct {v5, p2}, Lcom/google/android/picasasync/PhotoCollectorJson;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    .line 156
    .local v5, parser:Lcom/google/android/picasasync/PhotoCollectorJson;
    const/4 v8, 0x1

    .line 157
    .local v8, startIndex:I
    move v9, v8

    .line 158
    .local v9, totalCount:I
    :cond_34
    :goto_34
    if-gt v8, v9, :cond_95

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&start-index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, url:Ljava/lang/String;
    const-string v4, "getUploadedPhotos"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/picasasync/PicasaApi;->getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/picasasync/PhotoCollectorJson;)I

    move-result v7

    .line 161
    .local v7, result:I
    if-eqz v7, :cond_59

    .line 177
    .end local v3           #url:Ljava/lang/String;
    .end local v7           #result:I
    :goto_58
    return v7

    .line 163
    .restart local v3       #url:Ljava/lang/String;
    .restart local v7       #result:I
    :cond_59
    iget v0, v5, Lcom/google/android/picasasync/PhotoCollectorJson;->entryCount:I

    if-gtz v0, :cond_66

    .line 165
    const-string v0, "PicasaAPI"

    const-string v1, "getUploadedPhotos: server return zero entry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v7, 0x3

    goto :goto_58

    .line 168
    :cond_66
    iget v0, v5, Lcom/google/android/picasasync/PhotoCollectorJson;->entryCount:I

    add-int/2addr v8, v0

    .line 169
    iget v9, v5, Lcom/google/android/picasasync/PhotoCollectorJson;->totalCount:I

    .line 171
    if-gt v8, v9, :cond_34

    .line 173
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 174
    const-string v0, "PicasaAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v5, Lcom/google/android/picasasync/PhotoCollectorJson;->totalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 177
    .end local v3           #url:Ljava/lang/String;
    .end local v7           #result:I
    :cond_95
    const/4 v7, 0x0

    goto :goto_58
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .registers 3
    .parameter "authToken"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v0, p1}, Lcom/google/android/picasasync/GDataClient;->setAuthToken(Ljava/lang/String;)V

    .line 63
    return-void
.end method
