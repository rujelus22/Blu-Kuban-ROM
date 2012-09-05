.class public Lcom/google/android/apps/books/sync/VolumeCoverFetcher;
.super Ljava/lang/Object;
.source "VolumeCoverFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/sync/VolumeCoverFetcher$OFEZoomLevel;
    }
.end annotation


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mCoverHeight:I

.field private final mCoverThumbnailHeight:I

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Landroid/content/res/Resources;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V
    .registers 7
    .parameter "responseGetter"
    .parameter "resolver"
    .parameter "res"
    .parameter "fsm"
    .parameter "config"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 58
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 59
    const-string v0, "missing fileStorageManager"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/FileStorageManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 60
    const-string v0, "missing config"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 62
    const-string v0, "missing resources"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-virtual {p3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mAssetManager:Landroid/content/res/AssetManager;

    .line 64
    const v0, 0x7f0a000b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverHeight:I

    .line 65
    const v0, 0x7f0a000c

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverThumbnailHeight:I

    .line 66
    return-void
.end method

.method private static buildImageUrl(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .parameter "remoteUrl"
    .parameter "zoom"
    .parameter "height"

    .prologue
    .line 161
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "zoom"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "h"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchFallbackCoverIntoUri(Landroid/net/Uri;)V
    .registers 6
    .parameter "localUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v2, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mAssetManager:Landroid/content/res/AssetManager;

    const-string v3, "fallback_cover.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 203
    .local v0, input:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "wt"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 205
    .local v1, output:Ljava/io/OutputStream;
    :try_start_10
    invoke-static {v0, v1}, Lcom/google/android/plus1/util/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_1a

    .line 207
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 208
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 210
    return-void

    .line 207
    :catchall_1a
    move-exception v2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 208
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method private fetchIntoUri(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 11
    .parameter "localUri"
    .parameter "account"
    .parameter "remoteUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    invoke-virtual {v4, p3}, Lcom/google/android/apps/books/util/Config;->prepareForOcean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 175
    sget-object v3, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->VOLUME_COVER:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 176
    .local v3, trafficFlag:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
    invoke-static {v3}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->setThreadFlag(Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;)V

    .line 178
    :try_start_b
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-virtual {v4, p3, p2, v5}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 179
    .local v2, resp:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->incrementOperationCount()V

    .line 180
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 182
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_3b

    .line 183
    new-instance v4, Lorg/apache/http/client/ClientProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing cover response for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_36

    .line 197
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #resp:Lorg/apache/http/HttpResponse;
    :catchall_36
    move-exception v4

    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    throw v4

    .line 187
    .restart local v0       #entity:Lorg/apache/http/HttpEntity;
    .restart local v2       #resp:Lorg/apache/http/HttpResponse;
    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "wt"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_55

    move-result-object v1

    .line 189
    .local v1, out:Ljava/io/OutputStream;
    :try_start_43
    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_50

    .line 191
    :try_start_46
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_55

    .line 194
    :try_start_49
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_36

    .line 197
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    .line 199
    return-void

    .line 191
    :catchall_50
    move-exception v4

    :try_start_51
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v4
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    .line 194
    .end local v1           #out:Ljava/io/OutputStream;
    :catchall_55
    move-exception v4

    :try_start_56
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v4
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_36
.end method

.method private setContentStatusLocal(Landroid/net/Uri;)V
    .registers 6
    .parameter "volumeUri"

    .prologue
    const/4 v3, 0x0

    .line 151
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "cover_content_status"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 154
    return-void
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .registers 16
    .parameter "uri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v10, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v10}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    .line 88
    .local v6, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 91
    :try_start_9
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, volumeId:Ljava/lang/String;
    invoke-static {p2, v8}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 94
    .local v9, volumeUri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v11, "cover_url"

    invoke-static {v10, v9, v11}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, remoteUrl:Ljava/lang/String;
    invoke-static {p2, v8}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    .local v1, coverLocal:Landroid/net/Uri;
    invoke-static {p2, v8}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverThumbnailUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 99
    .local v2, coverThumbnailLocal:Landroid/net/Uri;
    invoke-static {v7}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 104
    const-string v10, "VolumeCoverFetcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "missing COVER_URL for vid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchFallbackCoverIntoUri(Landroid/net/Uri;)V

    .line 106
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchFallbackCoverIntoUri(Landroid/net/Uri;)V

    .line 107
    invoke-direct {p0, v9}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->setContentStatusLocal(Landroid/net/Uri;)V
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_8b

    .line 143
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 145
    :goto_4b
    return-void

    .line 117
    :cond_4c
    const/4 v10, 0x1

    :try_start_4d
    iget v11, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverHeight:I

    invoke-static {v7, v10, v11}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->buildImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, coverUrl:Ljava/lang/String;
    const/4 v10, 0x1

    iget v11, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverHeight:I

    invoke-static {v7, v10, v11}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->buildImageUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, coverFallbackUrl:Ljava/lang/String;
    const/4 v10, 0x1

    iget v11, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mCoverThumbnailHeight:I

    invoke-static {v7, v10, v11}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->buildImageUrl(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_8b

    move-result-object v3

    .line 125
    .local v3, coverThumbnailUrl:Ljava/lang/String;
    :try_start_61
    invoke-direct {p0, v1, p2, v4}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchIntoUri(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_8b
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_6e

    .line 139
    :goto_64
    :try_start_64
    invoke-direct {p0, v2, p2, v3}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchIntoUri(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, v9}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->setContentStatusLocal(Landroid/net/Uri;)V
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_8b

    .line 143
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4b

    .line 127
    :catch_6e
    move-exception v5

    .line 130
    .local v5, e:Ljava/io/IOException;
    :try_start_6f
    const-string v10, "VolumeCoverFetcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "optimal cover fetch failed; using fallback for vid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, v1, p2, v0}, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->fetchIntoUri(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_6f .. :try_end_8a} :catchall_8b

    goto :goto_64

    .line 143
    .end local v0           #coverFallbackUrl:Ljava/lang/String;
    .end local v1           #coverLocal:Landroid/net/Uri;
    .end local v2           #coverThumbnailLocal:Landroid/net/Uri;
    .end local v3           #coverThumbnailUrl:Ljava/lang/String;
    .end local v4           #coverUrl:Ljava/lang/String;
    .end local v5           #e:Ljava/io/IOException;
    .end local v7           #remoteUrl:Ljava/lang/String;
    .end local v8           #volumeId:Ljava/lang/String;
    .end local v9           #volumeUri:Landroid/net/Uri;
    :catchall_8b
    move-exception v10

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v10
.end method

.method public isAlreadyFetched(Landroid/accounts/Account;Landroid/net/Uri;)Z
    .registers 10
    .parameter "account"
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, volumeId:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildVolumeUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 72
    .local v2, volumeUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/apps/books/sync/VolumeCoverFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "cover_content_status"

    invoke-static {v4, v2, v5}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, status:I
    packed-switch v0, :pswitch_data_34

    .line 81
    :pswitch_18
    const/4 v3, 0x0

    :goto_19
    :pswitch_19
    return v3

    .line 78
    :pswitch_1a
    const-string v4, "VolumeCoverFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content status unavailable for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 74
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
