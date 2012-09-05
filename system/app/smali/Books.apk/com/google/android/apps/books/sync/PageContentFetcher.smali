.class public Lcom/google/android/apps/books/sync/PageContentFetcher;
.super Ljava/lang/Object;
.source "PageContentFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Fetcher;


# instance fields
.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V
    .registers 7
    .parameter "responseGetter"
    .parameter "resolver"
    .parameter "keyFactory"
    .parameter "fsm"
    .parameter "config"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 69
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 70
    const-string v0, "missing keyFactory"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/SessionKeyFactory;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 71
    const-string v0, "missing fileStorageManager"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/FileStorageManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 72
    const-string v0, "missing config"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 73
    return-void
.end method

.method private static buildPageUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "pageContentUri"

    .prologue
    .line 348
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, pageId:Ljava/lang/String;
    invoke-static {v0, v2, v1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static fetchPageContent(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/util/SessionKeyFactory;)Lorg/apache/http/HttpEntity;
    .registers 19
    .parameter "pageContentUri"
    .parameter "account"
    .parameter "volumeId"
    .parameter "query"
    .parameter "k_sData"
    .parameter "resolver"
    .parameter "config"
    .parameter "responseGetter"
    .parameter "keyFactory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v7, "missing responseGetter"

    move-object/from16 v0, p7

    invoke-static {v0, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v7, "missing resolver"

    invoke-static {p5, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v7, "missing keyFactory"

    move-object/from16 v0, p8

    invoke-static {v0, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v7, "missing config"

    move-object/from16 v0, p6

    invoke-static {v0, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {p0}, Lcom/google/android/apps/books/sync/PageContentFetcher;->buildPageUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "remote_url"

    invoke-static {p5, v7, v8}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, remoteUrl:Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/util/Config;->prepareForOcean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 155
    .local v2, remoteBuilder:Landroid/net/Uri$Builder;
    const-string v7, "cp_ksver"

    iget-object v8, p4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 161
    const-string v7, "w"

    const-string v8, "720"

    invoke-virtual {v2, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    if-eqz p3, :cond_6e

    .line 167
    const-string v7, "q"

    invoke-virtual {v2, v7, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 168
    sget-object v7, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->ORIGINAL_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    sget-object v8, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->HIGHLIGHTED_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    invoke-static {v7, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 173
    .local v6, trafficFlags:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;>;"
    :goto_4f
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, remoteTarget:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->setThreadFlags(Ljava/util/EnumSet;)V

    .line 177
    const/4 v7, 0x0

    :try_start_5b
    new-array v7, v7, [I

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, p1, v7}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 178
    .local v5, resp:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->incrementOperationCount()V

    .line 179
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_98
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_5b .. :try_end_69} :catch_75

    move-result-object v7

    .line 188
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    return-object v7

    .line 170
    .end local v3           #remoteTarget:Ljava/lang/String;
    .end local v5           #resp:Lorg/apache/http/HttpResponse;
    .end local v6           #trafficFlags:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;>;"
    :cond_6e
    sget-object v7, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->ORIGINAL_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .restart local v6       #trafficFlags:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;>;"
    goto :goto_4f

    .line 180
    .restart local v3       #remoteTarget:Ljava/lang/String;
    :catch_75
    move-exception v1

    .line 184
    .local v1, e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :try_start_76
    iget-object v7, p4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object/from16 v0, p8

    invoke-virtual {v0, v7, p1, p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 185
    new-instance v7, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsuported session key version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p4, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_98
    .catchall {:try_start_76 .. :try_end_98} :catchall_98

    .line 188
    .end local v1           #e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :catchall_98
    move-exception v7

    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    throw v7
.end method

.method private fetchPageMetadata(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 24
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static/range {p1 .. p2}, Lcom/google/android/apps/books/util/OceanUris;->buildPageUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 242
    .local v13, remoteUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/google/android/apps/books/util/Config;->prepareForOcean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 244
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 249
    .local v11, remoteBuilder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v5

    .line 250
    .local v5, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    const-string v17, "cp_ksver"

    iget-object v0, v5, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 252
    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, remoteTarget:Ljava/lang/String;
    const/4 v7, 0x0

    .line 255
    .local v7, entity:Lorg/apache/http/HttpEntity;
    sget-object v17, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->ORIGINAL_PAGES:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    sget-object v18, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->METADATA:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    invoke-static/range {v17 .. v18}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v16

    .line 257
    .local v16, trafficFlags:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;>;"
    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->setThreadFlags(Ljava/util/EnumSet;)V

    .line 259
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, v18

    invoke-virtual {v0, v12, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 260
    .local v14, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 261
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 262
    .local v15, status:I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v15, v0, :cond_e5

    .line 264
    new-instance v17, Lorg/apache/http/client/HttpResponseException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unexpected server response "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v17
    :try_end_a4
    .catchall {:try_start_4d .. :try_end_a4} :catchall_db
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_4d .. :try_end_a4} :catch_a4
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_a4} :catch_11f
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_a4} :catch_12c
    .catch Landroid/content/OperationApplicationException; {:try_start_4d .. :try_end_a4} :catch_139

    .line 280
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_a4
    move-exception v6

    .line 284
    .local v6, e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :try_start_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 285
    new-instance v17, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsuported session key version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_db
    .catchall {:try_start_a5 .. :try_end_db} :catchall_db

    .line 294
    .end local v6           #e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :catchall_db
    move-exception v17

    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    .line 295
    if-eqz v7, :cond_e4

    .line 296
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_e4
    throw v17

    .line 267
    .restart local v14       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    :cond_e5
    :try_start_e5
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->incrementOperationCount()V

    .line 269
    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v10

    .line 270
    .local v10, payloadRaw:Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 272
    .local v9, payload:Lorg/json/JSONObject;
    invoke-static {v9}, Lcom/google/android/apps/books/util/BlockedContentReason;->assertNotBlocked(Lorg/json/JSONObject;)V

    .line 275
    const-string v17, "page"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 276
    .local v8, pages:Lorg/json/JSONArray;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 277
    .local v4, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/apps/books/sync/PageContentFetcher;->parsePages(Landroid/accounts/Account;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "com.google.android.apps.books"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_116
    .catchall {:try_start_e5 .. :try_end_116} :catchall_db
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_e5 .. :try_end_116} :catch_a4
    .catch Lorg/json/JSONException; {:try_start_e5 .. :try_end_116} :catch_11f
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_116} :catch_12c
    .catch Landroid/content/OperationApplicationException; {:try_start_e5 .. :try_end_116} :catch_139

    .line 294
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    .line 295
    if-eqz v7, :cond_11e

    .line 296
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 299
    :cond_11e
    return-void

    .line 287
    .end local v4           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #pages:Lorg/json/JSONArray;
    .end local v9           #payload:Lorg/json/JSONObject;
    .end local v10           #payloadRaw:Ljava/lang/String;
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_11f
    move-exception v6

    .line 288
    .local v6, e:Lorg/json/JSONException;
    :try_start_120
    new-instance v17, Lorg/apache/http/client/ClientProtocolException;

    const-string v18, "problem reading json pages"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 289
    .end local v6           #e:Lorg/json/JSONException;
    :catch_12c
    move-exception v6

    .line 290
    .local v6, e:Landroid/os/RemoteException;
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Problem inserting update"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 291
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_139
    move-exception v6

    .line 292
    .local v6, e:Landroid/content/OperationApplicationException;
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Problem inserting update"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17
    :try_end_146
    .catchall {:try_start_120 .. :try_end_146} :catchall_db
.end method

.method private parsePageContent(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;)V
    .registers 18
    .parameter "account"
    .parameter "volumeId"
    .parameter "pageId"
    .parameter "entity"
    .parameter "k_sData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v9, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v9}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 202
    .local v2, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 204
    :try_start_9
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, contentUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "wt"

    invoke-virtual {v9, v1, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_5d

    move-result-object v3

    .line 207
    .local v3, output:Ljava/io/OutputStream;
    :try_start_15
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_58

    .line 209
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 213
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 214
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "content_status"

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    if-eqz p5, :cond_62

    .line 218
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    invoke-static {v9}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->getSessionKeyId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 219
    .local v6, sessionKeyId:J
    const-string v9, "session_key_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    .end local v6           #sessionKeyId:J
    :goto_3f
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 225
    .local v4, pageUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v4, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 226
    .local v5, rowCount:I
    const/4 v9, 0x1

    if-ne v5, v9, :cond_68

    const/4 v9, 0x1

    :goto_4f
    const-string v10, "unexpected row count"

    invoke-static {v9, v10}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_1a .. :try_end_54} :catchall_5d

    .line 229
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 231
    return-void

    .line 209
    .end local v4           #pageUri:Landroid/net/Uri;
    .end local v5           #rowCount:I
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_58
    move-exception v9

    :try_start_59
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v9
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    .line 229
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v3           #output:Ljava/io/OutputStream;
    :catchall_5d
    move-exception v9

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9

    .line 221
    .restart local v1       #contentUri:Landroid/net/Uri;
    .restart local v3       #output:Ljava/io/OutputStream;
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_62
    :try_start_62
    const-string v9, "session_key_id"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_5d

    goto :goto_3f

    .line 226
    .restart local v4       #pageUri:Landroid/net/Uri;
    .restart local v5       #rowCount:I
    :cond_68
    const/4 v9, 0x0

    goto :goto_4f
.end method

.method public static parsePages(Landroid/accounts/Account;Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/List;)V
    .registers 18
    .parameter "account"
    .parameter "volumeId"
    .parameter "pages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 308
    .local p3, batch:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_8c

    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 309
    .local v5, length:I
    :goto_6
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v5, :cond_cc

    .line 310
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 314
    .local v7, page:Lorg/json/JSONObject;
    const-string v12, "pid"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, pageId:Ljava/lang/String;
    invoke-static {p0, p1, v8}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 316
    .local v9, pageUri:Landroid/net/Uri;
    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 319
    .local v6, oper:Landroid/content/ContentProviderOperation$Builder;
    const-string v12, "flags"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, flags:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/books/sync/VolumeManifestFetcher;->isForbidden(Ljava/lang/String;)Z

    move-result v3

    .line 321
    .local v3, forbidden:Z
    const-string v12, "src"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 324
    .local v11, url:Ljava/lang/String;
    if-eqz v3, :cond_8f

    .line 325
    const-string v12, "content_status"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 335
    :goto_3b
    const-string v12, "cc_box"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 336
    .local v1, ccbox:Lorg/json/JSONObject;
    if-eqz v1, :cond_7f

    .line 337
    const-string v12, "cc_box_x"

    const-string v13, "X"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 338
    const-string v12, "cc_box_y"

    const-string v13, "Y"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 339
    const-string v12, "cc_box_w"

    const-string v13, "W"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 340
    const-string v12, "cc_box_h"

    const-string v13, "H"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 343
    :cond_7f
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 308
    .end local v1           #ccbox:Lorg/json/JSONObject;
    .end local v2           #flags:Ljava/lang/String;
    .end local v3           #forbidden:Z
    .end local v4           #i:I
    .end local v5           #length:I
    .end local v6           #oper:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #page:Lorg/json/JSONObject;
    .end local v8           #pageId:Ljava/lang/String;
    .end local v9           #pageUri:Landroid/net/Uri;
    .end local v11           #url:Ljava/lang/String;
    :cond_8c
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 326
    .restart local v2       #flags:Ljava/lang/String;
    .restart local v3       #forbidden:Z
    .restart local v4       #i:I
    .restart local v5       #length:I
    .restart local v6       #oper:Landroid/content/ContentProviderOperation$Builder;
    .restart local v7       #page:Lorg/json/JSONObject;
    .restart local v8       #pageId:Ljava/lang/String;
    .restart local v9       #pageUri:Landroid/net/Uri;
    .restart local v11       #url:Ljava/lang/String;
    :cond_8f
    invoke-static {v11}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c0

    .line 327
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 329
    .local v10, relative:Landroid/net/Uri;
    const-string v12, "remote_url"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 330
    const-string v12, "content_status"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_3b

    .line 332
    .end local v10           #relative:Landroid/net/Uri;
    :cond_c0
    const-string v12, "content_status"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_3b

    .line 345
    .end local v2           #flags:Ljava/lang/String;
    .end local v3           #forbidden:Z
    .end local v6           #oper:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #page:Lorg/json/JSONObject;
    .end local v8           #pageId:Ljava/lang/String;
    .end local v9           #pageUri:Landroid/net/Uri;
    .end local v11           #url:Ljava/lang/String;
    :cond_cc
    return-void
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .registers 16
    .parameter "pageContentUri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->getPageId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 97
    .local v12, pageId:Ljava/lang/String;
    const-string v0, "missing volumeId"

    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "missing pageId"

    invoke-static {v12, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "missing account"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "PageContentFetcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 102
    const-string v0, "PageContentFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetching vid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_42
    invoke-direct {p0, v2, v12, p2}, Lcom/google/android/apps/books/sync/PageContentFetcher;->fetchPageMetadata(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v0, p2, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v4

    .line 112
    .local v4, k_sData:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    const/4 v9, 0x0

    .line 114
    .local v9, entity:Lorg/apache/http/HttpEntity;
    const/4 v3, 0x0

    :try_start_4d
    iget-object v5, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    iget-object v7, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    iget-object v8, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/books/sync/PageContentFetcher;->fetchPageContent(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/Config;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/util/SessionKeyFactory;)Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 119
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 120
    .local v11, contentType:Ljava/lang/String;
    const-string v0, "image/gif"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 121
    const-string v0, "PageContentFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested encrypted content, but response was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v4, 0x0

    :cond_84
    move-object v5, p0

    move-object v6, p2

    move-object v7, v2

    move-object v8, v12

    move-object v10, v4

    .line 124
    invoke-direct/range {v5 .. v10}, Lcom/google/android/apps/books/sync/PageContentFetcher;->parsePageContent(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;)V
    :try_end_8c
    .catchall {:try_start_4d .. :try_end_8c} :catchall_92

    .line 126
    if-eqz v9, :cond_91

    .line 127
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 129
    :cond_91
    return-void

    .line 126
    .end local v11           #contentType:Ljava/lang/String;
    :catchall_92
    move-exception v0

    if-eqz v9, :cond_98

    .line 127
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_98
    throw v0
.end method

.method public isAlreadyFetched(Landroid/accounts/Account;Landroid/net/Uri;)Z
    .registers 8
    .parameter "account"
    .parameter "pageContentUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 79
    iget-object v2, p0, Lcom/google/android/apps/books/sync/PageContentFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/google/android/apps/books/sync/PageContentFetcher;->buildPageUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "content_status"

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, status:I
    packed-switch v0, :pswitch_data_30

    .line 88
    :pswitch_14
    const/4 v1, 0x0

    :goto_15
    :pswitch_15
    return v1

    .line 85
    :pswitch_16
    const-string v2, "PageContentFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content status unavailable for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 81
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_16
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
