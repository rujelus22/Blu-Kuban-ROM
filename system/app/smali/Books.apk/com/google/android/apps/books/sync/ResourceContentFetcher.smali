.class public Lcom/google/android/apps/books/sync/ResourceContentFetcher;
.super Ljava/lang/Object;
.source "ResourceContentFetcher.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/sync/ResourceContentFetcher$ResourcesUrlAndTypeQuery;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/google/android/apps/books/util/Config;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mDecryptResources:Z

.field private final mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

.field private final mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/net/ResponseGetter;Landroid/net/ConnectivityManager;Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/SessionKeyFactory;Lcom/google/android/apps/books/common/FileStorageManager;Lcom/google/android/apps/books/util/Config;Z)V
    .registers 9
    .parameter "responseGetter"
    .parameter "connectivityManager"
    .parameter "resolver"
    .parameter "keyFactory"
    .parameter "fsm"
    .parameter "config"
    .parameter "decryptResources"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "missing responseGetter"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 86
    const-string v0, "missing contentResolver"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    .line 87
    const-string v0, "missing connectivity manager"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 89
    const-string v0, "missing keyFactory"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/SessionKeyFactory;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 90
    const-string v0, "missing fileStorageManager"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/FileStorageManager;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    .line 91
    const-string v0, "missing config"

    invoke-static {p6, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/Config;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 92
    iput-boolean p7, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mDecryptResources:Z

    .line 93
    return-void
.end method

.method private static buildResourceUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "resContentUri"

    .prologue
    .line 291
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, resId:Ljava/lang/String;
    invoke-static {v0, v2, v1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private parseResourceContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;Landroid/accounts/Account;)V
    .registers 29
    .parameter "volumeId"
    .parameter "resId"
    .parameter "resourceType"
    .parameter "entity"
    .parameter "k_sData"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    const-string v3, "text/css"

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 209
    invoke-static/range {p4 .. p4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v15

    .line 210
    .local v15, payloadRaw:Ljava/lang/String;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    .local v14, payload:Lorg/json/JSONObject;
    invoke-static {v14}, Lcom/google/android/apps/books/util/BlockedContentReason;->assertNotBlocked(Lorg/json/JSONObject;)V

    .line 214
    const-string v3, "style"

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 216
    .local v20, style:Ljava/lang/String;
    const/16 p5, 0x0

    .line 217
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 222
    .end local v14           #payload:Lorg/json/JSONObject;
    .end local v15           #payloadRaw:Ljava/lang/String;
    .end local v20           #style:Ljava/lang/String;
    .local v4, input:Ljava/io/InputStream;
    :goto_27
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mDecryptResources:Z

    if-eqz v3, :cond_45

    if-eqz p5, :cond_45

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgrade(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_42} :catch_ee
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_42} :catch_f7

    move-result-object v4

    .line 227
    const/16 p5, 0x0

    .line 240
    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mFileStorageManager:Lcom/google/android/apps/books/common/FileStorageManager;

    invoke-virtual {v3}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v12

    .line 241
    .local v12, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 244
    :try_start_50
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceContentUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 245
    .local v9, contentUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "wt"

    invoke-virtual {v3, v9, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_63
    .catchall {:try_start_50 .. :try_end_63} :catchall_127

    move-result-object v13

    .line 247
    .local v13, output:Ljava/io/OutputStream;
    :try_start_64
    invoke-static {v4, v13}, Lcom/google/android/plus1/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_122

    .line 249
    :try_start_67
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 253
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v21, values:Landroid/content/ContentValues;
    const-string v3, "content_status"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    if-eqz p5, :cond_12c

    .line 258
    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->getSessionKeyId(Landroid/net/Uri;)J

    move-result-wide v18

    .line 259
    .local v18, sessionKeyId:J
    const-string v3, "session_key_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    .end local v18           #sessionKeyId:J
    :goto_90
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceUri(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 265
    .local v16, resUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 266
    .local v17, rowCount:I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_135

    const/4 v3, 0x1

    :goto_ae
    const-string v5, "unexpected row count"

    invoke-static {v3, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 268
    const-string v3, "ResourceContentFetcher"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 269
    const-string v3, "ResourceContentFetcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetched vid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", rid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->shortenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_67 .. :try_end_e4} :catchall_127

    .line 273
    :cond_e4
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 275
    return-void

    .line 219
    .end local v4           #input:Ljava/io/InputStream;
    .end local v9           #contentUri:Landroid/net/Uri;
    .end local v12           #lock:Ljava/util/concurrent/locks/Lock;
    .end local v13           #output:Ljava/io/OutputStream;
    .end local v16           #resUri:Landroid/net/Uri;
    .end local v17           #rowCount:I
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_e8
    :try_start_e8
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_eb
    .catch Lorg/json/JSONException; {:try_start_e8 .. :try_end_eb} :catch_ee
    .catch Ljava/security/GeneralSecurityException; {:try_start_e8 .. :try_end_eb} :catch_f7

    move-result-object v4

    .restart local v4       #input:Ljava/io/InputStream;
    goto/16 :goto_27

    .line 229
    .end local v4           #input:Ljava/io/InputStream;
    :catch_ee
    move-exception v10

    .line 230
    .local v10, e:Lorg/json/JSONException;
    new-instance v3, Lorg/apache/http/client/ClientProtocolException;

    const-string v5, "problem reading json pages"

    invoke-direct {v3, v5, v10}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 231
    .end local v10           #e:Lorg/json/JSONException;
    :catch_f7
    move-exception v10

    .line 232
    .local v10, e:Ljava/security/GeneralSecurityException;
    new-instance v11, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem decrypting resource "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in volume "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 234
    .local v11, ioException:Ljava/io/IOException;
    invoke-virtual {v11, v10}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 235
    throw v11

    .line 249
    .end local v10           #e:Ljava/security/GeneralSecurityException;
    .end local v11           #ioException:Ljava/io/IOException;
    .restart local v4       #input:Ljava/io/InputStream;
    .restart local v9       #contentUri:Landroid/net/Uri;
    .restart local v12       #lock:Ljava/util/concurrent/locks/Lock;
    .restart local v13       #output:Ljava/io/OutputStream;
    :catchall_122
    move-exception v3

    :try_start_123
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    throw v3
    :try_end_127
    .catchall {:try_start_123 .. :try_end_127} :catchall_127

    .line 273
    .end local v9           #contentUri:Landroid/net/Uri;
    .end local v13           #output:Ljava/io/OutputStream;
    :catchall_127
    move-exception v3

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 261
    .restart local v9       #contentUri:Landroid/net/Uri;
    .restart local v13       #output:Ljava/io/OutputStream;
    .restart local v21       #values:Landroid/content/ContentValues;
    :cond_12c
    :try_start_12c
    const-string v3, "session_key_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_133
    .catchall {:try_start_12c .. :try_end_133} :catchall_127

    goto/16 :goto_90

    .line 266
    .restart local v16       #resUri:Landroid/net/Uri;
    .restart local v17       #rowCount:I
    :cond_135
    const/4 v3, 0x0

    goto/16 :goto_ae
.end method

.method public static shortenId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "id"

    .prologue
    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 283
    .local v0, length:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_d

    .line 286
    .end local p0
    :goto_c
    return-object p0

    .restart local p0
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, -0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method


# virtual methods
.method public fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .registers 28
    .parameter "resContentUri"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v24

    .line 115
    .local v24, volumeId:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->getResourceId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    .line 117
    .local v20, resId:Ljava/lang/String;
    const-string v2, "missing volumeId"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "missing resId"

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v2, "missing account"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v2, "ResourceContentFetcher"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 122
    invoke-static/range {v20 .. v20}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->shortenId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 123
    .local v22, shortResId:Ljava/lang/String;
    const-string v2, "ResourceContentFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fetching vid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v22           #shortResId:Ljava/lang/String;
    :cond_50
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->buildResourceUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 127
    .local v3, resourceUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google/android/apps/books/sync/ResourceContentFetcher$ResourcesUrlAndTypeQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 133
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_61
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 134
    .local v12, count:I
    const/4 v2, 0x1

    if-ne v12, v2, :cond_ff

    const/4 v2, 0x1

    :goto_69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected row count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 136
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 138
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 139
    .local v19, remoteUrl:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_99
    .catchall {:try_start_61 .. :try_end_99} :catchall_102

    move-result-object v7

    .line 141
    .local v7, resourceType:Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mConfig:Lcom/google/android/apps/books/util/Config;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/google/android/apps/books/util/Config;->prepareForOcean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 147
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 150
    .local v17, remoteBuilder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v9

    .line 151
    .local v9, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    const-string v2, "cp_ksver"

    iget-object v4, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 155
    .local v18, remoteTarget:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_107

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device offline, skipping "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in volume "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, msg:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v7           #resourceType:Ljava/lang/String;
    .end local v9           #data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .end local v16           #msg:Ljava/lang/String;
    .end local v17           #remoteBuilder:Landroid/net/Uri$Builder;
    .end local v18           #remoteTarget:Ljava/lang/String;
    .end local v19           #remoteUrl:Ljava/lang/String;
    :cond_ff
    const/4 v2, 0x0

    goto/16 :goto_69

    .line 141
    .end local v12           #count:I
    :catchall_102
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 162
    .restart local v7       #resourceType:Ljava/lang/String;
    .restart local v9       #data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .restart local v12       #count:I
    .restart local v17       #remoteBuilder:Landroid/net/Uri$Builder;
    .restart local v18       #remoteTarget:Ljava/lang/String;
    .restart local v19       #remoteUrl:Ljava/lang/String;
    :cond_107
    sget-object v2, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->FLOWING_TEXT:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    sget-object v4, Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;->RESOURCE:Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;

    invoke-static {v2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v23

    .line 164
    .local v23, trafficFlags:Ljava/util/EnumSet;,"Ljava/util/EnumSet<Lcom/google/android/apps/books/net/TrafficStatsUtils$TrafficFlag;>;"
    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->setThreadFlags(Ljava/util/EnumSet;)V

    .line 165
    const/4 v8, 0x0

    .line 167
    .local v8, entity:Lorg/apache/http/HttpEntity;
    :try_start_113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    const/4 v4, 0x0

    new-array v4, v4, [I

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 168
    .local v21, resp:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->incrementOperationCount()V

    .line 169
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 174
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v15

    .line 175
    .local v15, entityContentType:Lorg/apache/http/Header;
    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, contentType:Ljava/lang/String;
    const-string v2, "image/gif"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_193

    .line 177
    new-instance v2, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server returned \'image not available\' gif for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with K_sV="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_160
    .catchall {:try_start_113 .. :try_end_160} :catchall_189
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_113 .. :try_end_160} :catch_160

    .line 183
    .end local v11           #contentType:Ljava/lang/String;
    .end local v15           #entityContentType:Lorg/apache/http/Header;
    .end local v21           #resp:Lorg/apache/http/HttpResponse;
    :catch_160
    move-exception v14

    .line 187
    .local v14, e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :try_start_161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    iget-object v4, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->sessionKeyUri:Landroid/net/Uri;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 188
    new-instance v2, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsuported session key version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v14}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_189
    .catchall {:try_start_161 .. :try_end_189} :catchall_189

    .line 191
    .end local v14           #e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :catchall_189
    move-exception v2

    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    .line 192
    if-eqz v8, :cond_192

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_192
    throw v2

    .restart local v11       #contentType:Ljava/lang/String;
    .restart local v15       #entityContentType:Lorg/apache/http/Header;
    .restart local v21       #resp:Lorg/apache/http/HttpResponse;
    :cond_193
    move-object/from16 v4, p0

    move-object/from16 v5, v24

    move-object/from16 v6, v20

    move-object/from16 v10, p2

    .line 182
    :try_start_19b
    invoke-direct/range {v4 .. v10}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->parseResourceContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;Landroid/accounts/Account;)V
    :try_end_19e
    .catchall {:try_start_19b .. :try_end_19e} :catchall_189
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_19b .. :try_end_19e} :catch_160

    .line 191
    invoke-static {}, Lcom/google/android/apps/books/net/TrafficStatsUtils;->clearThreadFlags()V

    .line 192
    if-eqz v8, :cond_1a6

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 194
    :cond_1a6
    return-void
.end method

.method public isAlreadyFetched(Landroid/accounts/Account;Landroid/net/Uri;)Z
    .registers 8
    .parameter "account"
    .parameter "resContentUri"

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-object v2, p0, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Lcom/google/android/apps/books/sync/ResourceContentFetcher;->buildResourceUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "content_status"

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForInt(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, status:I
    packed-switch v0, :pswitch_data_30

    .line 108
    :pswitch_14
    const/4 v1, 0x0

    :goto_15
    :pswitch_15
    return v1

    .line 105
    :pswitch_16
    const-string v2, "ResourceContentFetcher"

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

    .line 101
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_16
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
