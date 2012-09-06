.class public final Lcom/google/android/picasasync/PicasaApi;
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v1, Lcom/google/android/picasasync/GDataClient$Operation;

    invoke-direct {v1}, Lcom/google/android/picasasync/GDataClient$Operation;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mOperation:Lcom/google/android/picasasync/GDataClient$Operation;

    .line 60
    new-instance v1, Lcom/google/android/picasasync/GDataClient;

    invoke-direct {v1}, Lcom/google/android/picasasync/GDataClient;-><init>()V

    iput-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    .line 61
    const-string v1, "picasa_gdata_base_url"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, baseUrl:Ljava/lang/String;
    if-nez v0, :cond_1b

    const-string v0, "https://picasaweb.google.com/data/feed/api/"

    .end local v0           #baseUrl:Ljava/lang/String;
    :cond_1b
    iput-object v0, p0, Lcom/google/android/picasasync/PicasaApi;->mBaseUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 7
    .parameter "imageUrl"
    .parameter "maxSide"
    .parameter "centerCropped"

    .prologue
    .line 239
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 240
    invoke-static {p0}, Lcom/google/android/picasastore/FIFEUtil;->getImageUrlOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 241
    .local v1, hasI:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v2, 0x73

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    if-eqz p2, :cond_25

    const-string v2, "-c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_25
    if-eqz v1, :cond_2c

    const-string v2, "-I"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/picasastore/FIFEUtil;->setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #hasI:Z
    :goto_38
    return-object v2

    .line 247
    :cond_39
    if-eqz p2, :cond_42

    .line 248
    const-string v2, "PicasaAPI"

    const-string v3, "not a FIFE url, ignore the crop option"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_42
    invoke-static {p1, p0}, Lcom/google/android/picasastore/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_38
.end method

.method private static encodeUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "username"

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 230
    const-string v0, "@gmail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "@googlemail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 233
    :cond_14
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 235
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
    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PicasaApi."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 152
    .local v2, statsId:I
    const-string v3, "PicasaAPI"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 153
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

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_5a
    :try_start_5a
    iget-object v1, p0, Lcom/google/android/picasasync/PicasaApi;->mOperation:Lcom/google/android/picasasync/GDataClient$Operation;

    .line 160
    .local v1, operation:Lcom/google/android/picasasync/GDataClient$Operation;
    iget-object v3, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 161
    iget-object v3, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v3, p3, v1}, Lcom/google/android/picasasync/GDataClient;->get(Ljava/lang/String;Lcom/google/android/picasasync/GDataClient$Operation;)V
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_65} :catch_c0

    .line 163
    :try_start_65
    iget v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    sparse-switch v3, :sswitch_data_e6

    .line 177
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
    :try_end_88
    .catchall {:try_start_65 .. :try_end_88} :catchall_b9

    .line 178
    const/4 v3, 0x3

    .line 181
    :try_start_89
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_c0

    .line 188
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    .end local v1           #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :goto_91
    return v3

    .line 166
    .restart local v1       #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :sswitch_92
    :try_start_92
    iget-object v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    iput-object v3, p1, Lcom/google/android/picasasync/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 168
    iget-object v3, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-virtual {p5, v3}, Lcom/google/android/picasasync/PhotoCollectorJson;->parse(Ljava/io/InputStream;)V
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_b9

    .line 169
    const/4 v3, 0x0

    .line 181
    :try_start_9c
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a1} :catch_c0

    .line 188
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_91

    .line 172
    :sswitch_a5
    const/4 v3, 0x1

    .line 181
    :try_start_a6
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ab} :catch_c0

    .line 188
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_91

    .line 175
    :sswitch_af
    const/4 v3, 0x2

    .line 181
    :try_start_b0
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_b5
    .catchall {:try_start_b0 .. :try_end_b5} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b5} :catch_c0

    .line 188
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_91

    .line 181
    :catchall_b9
    move-exception v3

    :try_start_ba
    iget-object v4, v1, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_c0
    .catchall {:try_start_ba .. :try_end_c0} :catchall_e1
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c0} :catch_c0

    .line 183
    .end local v1           #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :catch_c0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    :try_start_c1
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->handleInterrruptedException(Ljava/lang/Throwable;)Z

    .line 185
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
    :try_end_dc
    .catchall {:try_start_c1 .. :try_end_dc} :catchall_e1

    .line 186
    const/4 v3, 0x3

    .line 188
    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_91

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_e1
    move-exception v3

    invoke-static {v2}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v3

    .line 163
    :sswitch_data_e6
    .sparse-switch
        0xc8 -> :sswitch_92
        0x130 -> :sswitch_a5
        0x191 -> :sswitch_af
        0x193 -> :sswitch_af
    .end sparse-switch
.end method


# virtual methods
.method public getAlbumPhotos(Lcom/google/android/picasasync/AlbumEntry;Lcom/google/android/picasasync/PicasaApi$EntryHandler;)I
    .registers 9
    .parameter "album"
    .parameter "handler"

    .prologue
    .line 128
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

    .line 137
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

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 71
    const-string v8, "PicasaApi.getAlbums"

    invoke-static {v8}, Lcom/google/android/picasastore/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v3

    .line 73
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

    .line 81
    .local v0, builder:Ljava/lang/StringBuilder;
    :try_start_33
    iget-object v2, p0, Lcom/google/android/picasasync/PicasaApi;->mOperation:Lcom/google/android/picasasync/GDataClient$Operation;

    .line 82
    .local v2, operation:Lcom/google/android/picasasync/GDataClient$Operation;
    iget-object v8, p1, Lcom/google/android/picasasync/UserEntry;->albumsEtag:Ljava/lang/String;

    iput-object v8, v2, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 83
    const-string v8, "PicasaAPI"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 84
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

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_5e
    iget-object v8, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Lcom/google/android/picasasync/GDataClient;->get(Ljava/lang/String;Lcom/google/android/picasasync/GDataClient$Operation;)V
    :try_end_67
    .catchall {:try_start_33 .. :try_end_67} :catchall_fc
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_67} :catch_ec

    .line 89
    :try_start_67
    iget v8, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outStatus:I

    sparse-switch v8, :sswitch_data_102

    .line 103
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
    :try_end_8e
    .catchall {:try_start_67 .. :try_end_8e} :catchall_e5

    .line 108
    :try_start_8e
    iget-object v4, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_fc
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_93} :catch_ec

    .line 116
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    move v4, v7

    .end local v2           #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :goto_97
    return v4

    .line 91
    .restart local v2       #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :sswitch_98
    :try_start_98
    iget-object v5, v2, Lcom/google/android/picasasync/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    iput-object v5, p1, Lcom/google/android/picasasync/UserEntry;->albumsEtag:Ljava/lang/String;

    .line 92
    new-instance v5, Lcom/google/android/picasasync/AlbumCollectorJson;

    invoke-direct {v5, p2}, Lcom/google/android/picasasync/AlbumCollectorJson;-><init>(Lcom/google/android/picasasync/PicasaApi$EntryHandler;)V

    iget-object v6, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/AlbumCollectorJson;->parse(Ljava/io/InputStream;)V
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_e5

    .line 108
    :try_start_a6
    iget-object v5, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_fc
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_ab} :catch_ec

    .line 116
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    goto :goto_97

    .line 108
    :sswitch_af
    :try_start_af
    iget-object v4, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_fc
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b4} :catch_ec

    .line 116
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    move v4, v5

    goto :goto_97

    .line 99
    :sswitch_b9
    :try_start_b9
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
    :try_end_db
    .catchall {:try_start_b9 .. :try_end_db} :catchall_e5

    .line 108
    :try_start_db
    iget-object v4, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_e0
    .catchall {:try_start_db .. :try_end_e0} :catchall_fc
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_e0} :catch_ec

    .line 116
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    move v4, v6

    goto :goto_97

    .line 108
    :catchall_e5
    move-exception v4

    :try_start_e6
    iget-object v5, v2, Lcom/google/android/picasasync/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_ec
    .catchall {:try_start_e6 .. :try_end_ec} :catchall_fc
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_ec} :catch_ec

    .line 111
    .end local v2           #operation:Lcom/google/android/picasasync/GDataClient$Operation;
    :catch_ec
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Throwable;
    :try_start_ed
    invoke-static {v1}, Lcom/android/gallery3d/common/Utils;->handleInterrruptedException(Ljava/lang/Throwable;)Z

    .line 113
    const-string v4, "PicasaAPI"

    const-string v5, "getAlbums fail"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f7
    .catchall {:try_start_ed .. :try_end_f7} :catchall_fc

    .line 116
    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    move v4, v7

    goto :goto_97

    .end local v1           #e:Ljava/lang/Throwable;
    :catchall_fc
    move-exception v4

    invoke-static {v3}, Lcom/google/android/picasastore/MetricsUtils;->end(I)V

    throw v4

    .line 89
    nop

    :sswitch_data_102
    .sparse-switch
        0xc8 -> :sswitch_98
        0x130 -> :sswitch_af
        0x191 -> :sswitch_b9
        0x193 -> :sswitch_b9
    .end sparse-switch
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .registers 3
    .parameter "authToken"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/picasasync/PicasaApi;->mClient:Lcom/google/android/picasasync/GDataClient;

    invoke-virtual {v0, p1}, Lcom/google/android/picasasync/GDataClient;->setAuthToken(Ljava/lang/String;)V

    .line 68
    return-void
.end method
