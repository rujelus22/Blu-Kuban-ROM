.class public Lcom/google/android/apps/books/sync/SectionContentFetcher;
.super Ljava/lang/Object;
.source "SectionContentFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Fetcher;


# static fields
.field static final CLAMP_SCREEN_WIDTH:I = 0x398
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mGetter:Lcom/google/android/apps/books/net/ResponseGetter;

.field private final mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/content/ContentResolver;Landroid/util/DisplayMetrics;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;)V
    .registers 8
    .parameter "responseGetter"
    .parameter "resolver"
    .parameter "metrics"
    .parameter "keyFactory"
    .parameter "fsm"
    .parameter "config"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 78
    const-string v0, "missing resolver"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 79
    const-string v0, "missing metrics"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mMetrics:Landroid/util/DisplayMetrics;

    .line 80
    const-string v0, "missing keyFactory"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/SessionKeyFactory;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 81
    const-string v0, "missing fileStorageManager"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/FileStorageManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 82
    const-string v0, "missing config"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 83
    return-void
.end method

.method private static buildSectionUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "sectionContentUri"

    .prologue
    .line 301
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, sectionId:Ljava/lang/String;
    invoke-static {v0, v2, v1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private static parseResources(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .parameter "account"
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    .local p3, resources:Ljava/util/List;,"Ljava/util/List<Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;>;"
    .local p4, batch:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p0, p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 227
    .local v5, resourceDirUri:Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_7b

    .line 229
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    .line 230
    .local v4, resource:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    invoke-virtual {v4}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, resourceUrl:Ljava/lang/String;
    const-string v7, "&amp;"

    const-string v8, "&"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 235
    invoke-virtual {v4}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasMimeType()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-virtual {v4}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, mimeType:Ljava/lang/String;
    :goto_2b
    const-string v7, "text/css"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_75

    .line 239
    invoke-static {v6}, Lcom/google/android/apps/books/provider/BooksContract$Files;->urlToResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, resId:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 243
    .local v2, oper:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "account_name"

    iget-object v8, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 244
    const-string v7, "volume_id"

    invoke-virtual {v2, v7, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 245
    const-string v7, "resource_id"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 246
    const-string v7, "resource_type"

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 247
    const-string v7, "related_section_id"

    invoke-virtual {v2, v7, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 248
    const-string v7, "resource_order"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 249
    const-string v7, "remote_url"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 250
    const-string v7, "content_status"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 252
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-interface {p4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    .end local v2           #oper:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #resId:Ljava/lang/String;
    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 235
    .end local v1           #mimeType:Ljava/lang/String;
    :cond_78
    const-string v1, ""

    goto :goto_2b

    .line 255
    .end local v4           #resource:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    .end local v6           #resourceUrl:Ljava/lang/String;
    :cond_7b
    return-void
.end method

.method private parseSectionContent(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;)V
    .registers 14
    .parameter "account"
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "entity"
    .parameter "k_sData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-interface {p4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 175
    .local v7, rawInput:Ljava/io/InputStream;
    invoke-static {v7}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->parseFrom(Ljava/io/InputStream;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;

    move-result-object v6

    .line 177
    .local v6, pages:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->parseSectionContentHeader(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)V

    .line 181
    invoke-virtual {v6}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getContent()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    .line 182
    .local v4, payload:[B
    if-eqz v4, :cond_18

    array-length v0, v4

    if-nez v0, :cond_19

    .line 183
    :cond_18
    const/4 p5, 0x0

    :cond_19
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->parseSectionContentBody(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/apps/books/util/SessionKeyFactory$K_sData;)V

    .line 187
    return-void
.end method

.method private parseSectionContentBody(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/apps/books/util/SessionKeyFactory$K_sData;)V
    .registers 18
    .parameter "account"
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "payload"
    .parameter "k_sData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v9, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v9}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    .line 269
    .local v2, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 271
    :try_start_9
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 272
    .local v1, contentUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "wt"

    invoke-virtual {v9, v1, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_5d

    move-result-object v3

    .line 274
    .local v3, output:Ljava/io/OutputStream;
    :try_start_15
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_58

    .line 276
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 280
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "content_status"

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    if-eqz p5, :cond_62

    .line 285
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    invoke-static {v9}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->getSessionKeyId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 286
    .local v6, sessionKeyId:J
    const-string v9, "session_key_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    .end local v6           #sessionKeyId:J
    :goto_3f
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 292
    .local v5, sectionUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 293
    .local v4, rowCount:I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_68

    const/4 v9, 0x1

    :goto_4f
    const-string v10, "unexpected row count"

    invoke-static {v9, v10}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_1a .. :try_end_54} :catchall_5d

    .line 296
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 298
    return-void

    .line 276
    .end local v4           #rowCount:I
    .end local v5           #sectionUri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_58
    move-exception v9

    :try_start_59
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    throw v9
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_5d

    .line 296
    .end local v1           #contentUri:Landroid/net/Uri;
    .end local v3           #output:Ljava/io/OutputStream;
    :catchall_5d
    move-exception v9

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9

    .line 288
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

    .line 293
    .restart local v4       #rowCount:I
    .restart local v5       #sectionUri:Landroid/net/Uri;
    :cond_68
    const/4 v9, 0x0

    goto :goto_4f
.end method

.method private parseSectionContentHeader(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)V
    .registers 10
    .parameter "account"
    .parameter "volumeId"
    .parameter "sectionId"
    .parameter "pages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p4}, Lcom/google/android/apps/books/util/BlockedContentReason;->assertNotBlocked(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;)V

    .line 200
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    .local v0, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p4}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPages;->getResourceList()Ljava/util/List;

    move-result-object v2

    .line 204
    .local v2, resources:Ljava/util/List;,"Ljava/util/List<Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;>;"
    if-eqz v2, :cond_10

    .line 205
    invoke-static {p1, p2, p3, v2, v0}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->parseResources(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 210
    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "com.google.android.apps.books"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_17
    .catch Landroid/content/OperationApplicationException; {:try_start_10 .. :try_end_17} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_17} :catch_21

    .line 216
    return-void

    .line 211
    :catch_18
    move-exception v1

    .line 212
    .local v1, e:Landroid/content/OperationApplicationException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Problem inserting update"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 213
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catch_21
    move-exception v1

    .line 214
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Problem inserting update"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .registers 18
    .parameter "sectionContentUri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, volumeId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->getSectionId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, sectionId:Ljava/lang/String;
    const-string v1, "missing volumeId"

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "missing sectionId"

    invoke-static {v4, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "missing account"

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "SectionContentFetcher"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 112
    const-string v1, "SectionContentFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fetching vid="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ", sid="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_44
    iget-object v1, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->buildSectionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v14, "remote_url"

    invoke-static {v1, v2, v14}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 123
    .local v10, remoteUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    invoke-virtual {v1, v10}, Lcom/google/android/apps/books/util/Config;->prepareForOcean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 128
    .local v8, remoteBuilder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x398

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 129
    .local v13, width:I
    const-string v1, "w"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v3}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v6

    .line 133
    .local v6, k_sData:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    const-string v1, "cp_ksver"

    iget-object v2, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    const-string v1, "alt"

    const-string v2, "proto"

    invoke-virtual {v8, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 136
    const-string v1, "inline"

    const-string v2, "0"

    invoke-virtual {v8, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 138
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, remoteTarget:Ljava/lang/String;
    const/4 v5, 0x0

    .line 141
    .local v5, entity:Lorg/apache/http/HttpEntity;
    sget-object v12, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->FLOWING_TEXT:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    .line 142
    .local v12, trafficFlag:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;
    invoke-static {v12}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->setThreadFlag(Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;)V

    .line 144
    :try_start_9c
    iget-object v1, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v2, 0x0

    new-array v2, v2, [I

    move-object/from16 v0, p2

    invoke-virtual {v1, v9, v0, v2}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 145
    .local v11, resp:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->incrementOperationCount()V

    .line 146
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    move-object v1, p0

    move-object/from16 v2, p2

    .line 148
    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->parseSectionContent(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;)V
    :try_end_b4
    .catchall {:try_start_9c .. :try_end_b4} :catchall_e2
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_9c .. :try_end_b4} :catch_bd

    .line 157
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    .line 158
    if-eqz v5, :cond_bc

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 164
    :cond_bc
    return-void

    .line 149
    .end local v11           #resp:Lorg/apache/http/HttpResponse;
    :catch_bd
    move-exception v7

    .line 153
    .local v7, e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :try_start_be
    iget-object v1, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    iget-object v2, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 154
    new-instance v1, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsuported session key version: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v14, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_e2
    .catchall {:try_start_be .. :try_end_e2} :catchall_e2

    .line 157
    .end local v7           #e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :catchall_e2
    move-exception v1

    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    .line 158
    if-eqz v5, :cond_eb

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_eb
    throw v1
.end method

.method public isAlreadyFetched(Landroid/accounts/Account;Landroid/net/Uri;)Z
    .registers 8
    .parameter "account"
    .parameter "sectionContentUri"

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v2, p0, Lcom/google/android/apps/books/sync/SectionContentFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/google/android/apps/books/sync/SectionContentFetcher;->buildSectionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "content_status"

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 91
    .local v0, status:I
    packed-switch v0, :pswitch_data_30

    .line 98
    :pswitch_14
    const/4 v1, 0x0

    :goto_15
    :pswitch_15
    return v1

    .line 95
    :pswitch_16
    const-string v2, "SectionContentFetcher"

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

    .line 91
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_16
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
