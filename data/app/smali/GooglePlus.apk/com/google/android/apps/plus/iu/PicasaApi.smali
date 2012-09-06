.class public final Lcom/google/android/apps/plus/iu/PicasaApi;
.super Ljava/lang/Object;
.source "PicasaApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;
    }
.end annotation


# instance fields
.field private final mBaseUrl:Ljava/lang/String;

.field private final mClient:Lcom/google/android/apps/plus/iu/GDataClient;

.field private final mOperation:Lcom/google/android/apps/plus/iu/GDataClient$Operation;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 4
    .parameter "resolver"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;

    invoke-direct {v1}, Lcom/google/android/apps/plus/iu/GDataClient$Operation;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/PicasaApi;->mOperation:Lcom/google/android/apps/plus/iu/GDataClient$Operation;

    .line 43
    new-instance v1, Lcom/google/android/apps/plus/iu/GDataClient;

    invoke-direct {v1}, Lcom/google/android/apps/plus/iu/GDataClient;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/iu/PicasaApi;->mClient:Lcom/google/android/apps/plus/iu/GDataClient;

    .line 44
    const-string v1, "picasa_gdata_base_url"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, baseUrl:Ljava/lang/String;
    if-nez v0, :cond_1b

    const-string v0, "https://picasaweb.google.com/data/feed/api/"

    .end local v0           #baseUrl:Ljava/lang/String;
    :cond_1b
    iput-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaApi;->mBaseUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private static encodeUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "username"

    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 157
    const-string v0, "@gmail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "@googlemail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 160
    :cond_14
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 162
    :cond_1f
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUploadedPhotos(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;Ljava/lang/String;Lcom/google/android/apps/plus/iu/PhotoCollectorJson;)I
    .registers 14
    .parameter "account"
    .parameter "etagHolder"
    .parameter "handler"
    .parameter "url"
    .parameter "parser"

    .prologue
    .line 98
    const-string v3, "PicasaApi.getUploadedPhotos"

    invoke-static {v3}, Lcom/google/android/apps/plus/iu/MetricsUtils;->begin(Ljava/lang/String;)I

    move-result v2

    .line 99
    .local v2, statsId:I
    const-string v3, "PicasaAPI"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 100
    const-string v3, "PicasaAPI"

    const-string v4, "get uploaded photos for %s etag %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/android/gallery3d/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aget-object v7, p2, v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/google/android/apps/plus/iu/PicasaApi;->mOperation:Lcom/google/android/apps/plus/iu/GDataClient$Operation;

    .line 106
    .local v1, operation:Lcom/google/android/apps/plus/iu/GDataClient$Operation;
    const/4 v3, 0x0

    aget-object v3, p2, v3

    iput-object v3, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 107
    iget-object v3, p0, Lcom/google/android/apps/plus/iu/PicasaApi;->mClient:Lcom/google/android/apps/plus/iu/GDataClient;

    invoke-virtual {v3, p4, v1}, Lcom/google/android/apps/plus/iu/GDataClient;->get(Ljava/lang/String;Lcom/google/android/apps/plus/iu/GDataClient$Operation;)V
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_36} :catch_d7

    .line 109
    :try_start_36
    iget v3, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->outStatus:I

    sparse-switch v3, :sswitch_data_116

    .line 123
    const-string v3, "PicasaAPI"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 124
    const-string v3, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUploadedPhotos failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->outStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_d0

    .line 126
    :cond_5e
    const/4 v3, 0x3

    .line 129
    :try_start_5f
    iget-object v4, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_64
    .catchall {:try_start_5f .. :try_end_64} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_d7

    .line 138
    const-string v4, "PicasaAPI"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 139
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_74
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    .end local v1           #operation:Lcom/google/android/apps/plus/iu/GDataClient$Operation;
    :goto_77
    return v3

    .line 112
    .restart local v1       #operation:Lcom/google/android/apps/plus/iu/GDataClient$Operation;
    :sswitch_78
    const/4 v3, 0x0

    :try_start_79
    iget-object v4, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    aput-object v4, p2, v3

    .line 114
    iget-object v3, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-virtual {p5, v3}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->parse(Ljava/io/InputStream;)V
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_d0

    .line 115
    const/4 v3, 0x0

    .line 129
    :try_start_83
    iget-object v4, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_d7

    .line 138
    const-string v4, "PicasaAPI"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 139
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_98
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    goto :goto_77

    .line 118
    :sswitch_9c
    const/4 v3, 0x1

    .line 129
    :try_start_9d
    iget-object v4, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_a2
    .catchall {:try_start_9d .. :try_end_a2} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_d7

    .line 138
    const-string v4, "PicasaAPI"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 139
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_b2
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    goto :goto_77

    .line 121
    :sswitch_b6
    const/4 v3, 0x2

    .line 129
    :try_start_b7
    iget-object v4, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_bc} :catch_d7

    .line 138
    const-string v4, "PicasaAPI"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 139
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_cc
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    goto :goto_77

    .line 129
    :catchall_d0
    move-exception v3

    :try_start_d1
    iget-object v4, v1, Lcom/google/android/apps/plus/iu/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_d7
    .catchall {:try_start_d1 .. :try_end_d7} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d7} :catch_d7

    .line 131
    .end local v1           #operation:Lcom/google/android/apps/plus/iu/GDataClient$Operation;
    :catch_d7
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    :try_start_d8
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->handleInterrruptedException(Ljava/lang/Throwable;)Z

    .line 133
    const-string v3, "PicasaAPI"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 134
    const-string v3, "PicasaAPI"

    const-string v4, "getUploadedPhotos failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_eb
    .catchall {:try_start_d8 .. :try_end_eb} :catchall_101

    .line 136
    :cond_eb
    const/4 v3, 0x3

    .line 138
    const-string v4, "PicasaAPI"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 139
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_fc
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    goto/16 :goto_77

    .line 138
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_101
    move-exception v3

    const-string v4, "PicasaAPI"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_112

    .line 139
    const-string v4, "PicasaAPI"

    const-string v5, "   done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_112
    invoke-static {v2}, Lcom/google/android/apps/plus/iu/MetricsUtils;->end(I)V

    throw v3

    .line 109
    :sswitch_data_116
    .sparse-switch
        0xc8 -> :sswitch_78
        0x130 -> :sswitch_9c
        0x191 -> :sswitch_b6
        0x193 -> :sswitch_b6
    .end sparse-switch
.end method


# virtual methods
.method public getUploadedPhotos(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;)I
    .registers 14
    .parameter "account"
    .parameter "etagHolder"
    .parameter "handler"

    .prologue
    const/4 v9, 0x0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/PicasaApi;->mBaseUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "user/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/plus/iu/PicasaApi;->encodeUsername(Ljava/lang/String;)Ljava/lang/String;

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

    .line 67
    .local v6, baseUrl:Ljava/lang/String;
    new-instance v5, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;

    invoke-direct {v5, p3}, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;-><init>(Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;)V

    .line 71
    .local v5, parser:Lcom/google/android/apps/plus/iu/PhotoCollectorJson;
    const/4 v8, 0x1

    .line 73
    .local v8, startIndex:I
    :goto_32
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

    move-result-object v4

    .local v4, url:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 74
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/iu/PicasaApi;->getUploadedPhotos(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/iu/PicasaApi$EntryHandler;Ljava/lang/String;Lcom/google/android/apps/plus/iu/PhotoCollectorJson;)I

    move-result v7

    .line 75
    .local v7, result:I
    if-eqz v7, :cond_54

    .line 87
    .end local v7           #result:I
    :goto_53
    return v7

    .line 77
    .restart local v7       #result:I
    :cond_54
    iget v0, v5, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->entryCount:I

    if-nez v0, :cond_7d

    .line 84
    const-string v0, "PicasaAPI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 85
    const-string v0, "PicasaAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "total entry count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    move v7, v9

    .line 87
    goto :goto_53

    .line 79
    :cond_7d
    iget v0, v5, Lcom/google/android/apps/plus/iu/PhotoCollectorJson;->entryCount:I

    add-int/2addr v8, v0

    .line 82
    const/4 v0, 0x0

    aput-object v0, p2, v9

    goto :goto_32
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .registers 3
    .parameter "authToken"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/PicasaApi;->mClient:Lcom/google/android/apps/plus/iu/GDataClient;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/iu/GDataClient;->setAuthToken(Ljava/lang/String;)V

    .line 51
    return-void
.end method
