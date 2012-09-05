.class public Lcom/google/android/music/sync/api/MusicApiClientImpl;
.super Ljava/lang/Object;
.source "MusicApiClientImpl.java"

# interfaces
.implements Lcom/google/android/music/sync/api/MusicApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$DeleteRequestCreator;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;,
        Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sPlaylistEntryInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

.field private static final sPlaylistInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

.field private static final sTrackInstance:Lcom/google/android/music/sync/google/model/Track;


# instance fields
.field private final mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

.field private final mContext:Landroid/content/Context;

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mLoggingId:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    .line 81
    new-instance v0, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sTrackInstance:Lcom/google/android/music/sync/google/model/Track;

    .line 82
    new-instance v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    .line 83
    new-instance v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistEntryInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/sync/common/AuthInfo;)V
    .registers 7
    .parameter "context"
    .parameter "authInfo"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    .line 165
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 167
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    sget-object v2, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/google/android/music/DebugUtils;->AUTO_LOG_ALL:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x3

    :goto_21
    invoke-virtual {v1, v2, v0}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    .line 169
    return-void

    .line 167
    :cond_2b
    const/4 v0, 0x2

    goto :goto_21
.end method

.method private createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    .registers 41
    .parameter "creator"
    .parameter "account"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 206
    const/16 v25, 0x0

    .line 207
    .local v25, response:Lorg/apache/http/HttpResponse;
    const/16 v30, 0x1f4

    .line 208
    .local v30, status:I
    const/16 v23, 0xa

    .line 209
    .local v23, redirectsLeft:I
    const/4 v4, 0x1

    .line 211
    .local v4, authRetriesLeft:I
    const-wide/16 v26, 0x0

    .line 213
    .local v26, retryAfter:J
    const/16 v31, 0x0

    .line 214
    .local v31, statusLine:Lorg/apache/http/StatusLine;
    :goto_b
    if-lez v23, :cond_153

    if-lez v4, :cond_153

    .line 215
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;->createRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v24

    .line 216
    .local v24, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {v24 .. v24}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/common/AuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, authToken:Ljava/lang/String;
    if-nez v5, :cond_32

    .line 219
    new-instance v33, Landroid/accounts/AuthenticatorException;

    const-string v34, "Null auth token.  Bailing."

    invoke-direct/range {v33 .. v34}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 221
    :cond_32
    const-string v33, "Authorization"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "GoogleLogin auth="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v33, "X-Device-Logging-ID"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getLoggingId()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v25

    .line 225
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    .line 226
    if-nez v31, :cond_7d

    .line 227
    new-instance v33, Ljava/io/IOException;

    const-string v34, "StatusLine is null -- should not happen."

    invoke-direct/range {v33 .. v34}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 229
    :cond_7d
    sget-boolean v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v33, :cond_c6

    .line 230
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .local v3, arr$:[Lorg/apache/http/Header;
    array-length v0, v3

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_97
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_c6

    aget-object v16, v3, v18

    .line 232
    .local v16, h:Lorg/apache/http/Header;
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    add-int/lit8 v18, v18, 0x1

    goto :goto_97

    .line 235
    .end local v3           #arr$:[Lorg/apache/http/Header;
    .end local v16           #h:Lorg/apache/http/Header;
    .end local v18           #i$:I
    .end local v20           #len$:I
    :cond_c6
    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    .line 236
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 238
    .local v12, entity:Lorg/apache/http/HttpEntity;
    const/16 v33, 0xc8

    move/from16 v0, v30

    move/from16 v1, v33

    if-lt v0, v1, :cond_129

    const/16 v33, 0x12c

    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_129

    .line 239
    const-string v33, "ETag"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 240
    .local v17, header:Lorg/apache/http/Header;
    if-nez v17, :cond_102

    const/16 v22, 0x0

    .line 241
    .local v22, newEtag:Ljava/lang/String;
    :goto_ec
    const/16 v33, 0xcc

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_107

    .line 242
    new-instance v33, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 248
    :goto_101
    return-object v33

    .line 240
    .end local v22           #newEtag:Ljava/lang/String;
    :cond_102
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v22

    goto :goto_ec

    .line 244
    .restart local v22       #newEtag:Ljava/lang/String;
    :cond_107
    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v19

    .line 245
    .local v19, in:Ljava/io/InputStream;
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const/16 v34, 0x3

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_11d

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v19

    .line 248
    :cond_11d
    new-instance v33, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_101

    .line 252
    .end local v17           #header:Lorg/apache/http/Header;
    .end local v19           #in:Ljava/io/InputStream;
    .end local v22           #newEtag:Ljava/lang/String;
    :cond_129
    const/16 v33, 0x12e

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_1d8

    .line 254
    if-eqz v12, :cond_136

    .line 255
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 257
    :cond_136
    const-string v33, "Location"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v21

    .line 258
    .local v21, location:Lorg/apache/http/Header;
    if-nez v21, :cond_1ae

    .line 259
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const/16 v34, 0x3

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_153

    .line 260
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const-string v34, "Redirect requested but no Location specified."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v5           #authToken:Ljava/lang/String;
    .end local v12           #entity:Lorg/apache/http/HttpEntity;
    .end local v21           #location:Lorg/apache/http/Header;
    .end local v24           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_153
    sget-boolean v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v33, :cond_179

    .line 319
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Received "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " status code."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_179
    const/4 v13, 0x0

    .line 322
    .local v13, errorMessage:Ljava/lang/String;
    const/4 v12, 0x0

    .line 324
    .restart local v12       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v25, :cond_181

    .line 325
    :try_start_17d
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 327
    :cond_181
    if-eqz v12, :cond_2d5

    .line 328
    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v19

    .line 329
    .restart local v19       #in:Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 330
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v33, 0x2000

    move/from16 v0, v33

    new-array v7, v0, [B

    .line 331
    .local v7, buf:[B
    const/4 v8, -0x1

    .line 332
    .local v8, bytesRead:I
    :goto_193
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v8, v0, :cond_2be

    .line 333
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1a6
    .catchall {:try_start_17d .. :try_end_1a6} :catchall_1a7

    goto :goto_193

    .line 342
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buf:[B
    .end local v8           #bytesRead:I
    .end local v19           #in:Ljava/io/InputStream;
    :catchall_1a7
    move-exception v33

    :goto_1a8
    if-eqz v12, :cond_1ad

    .line 343
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1ad
    throw v33

    .line 265
    .end local v13           #errorMessage:Ljava/lang/String;
    .restart local v5       #authToken:Ljava/lang/String;
    .restart local v21       #location:Lorg/apache/http/Header;
    .restart local v24       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_1ae
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const/16 v34, 0x3

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_1d4

    .line 266
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Following redirect to "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1d4
    add-int/lit8 v23, v23, -0x1

    .line 269
    goto/16 :goto_b

    .end local v21           #location:Lorg/apache/http/Header;
    :cond_1d8
    const/16 v33, 0x130

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_1e8

    .line 270
    new-instance v33, Lcom/google/android/music/sync/api/NotModifiedException;

    const-string v34, "No content."

    invoke-direct/range {v33 .. v34}, Lcom/google/android/music/sync/api/NotModifiedException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 271
    :cond_1e8
    const/16 v33, 0x190

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_1f8

    .line 272
    new-instance v33, Lcom/google/android/music/sync/api/BadRequestException;

    const-string v34, "Bad request"

    invoke-direct/range {v33 .. v34}, Lcom/google/android/music/sync/api/BadRequestException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 273
    :cond_1f8
    const/16 v33, 0x191

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_216

    .line 274
    if-eqz v12, :cond_205

    .line 275
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 277
    :cond_205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5}, Lcom/google/android/music/sync/common/AuthInfo;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 278
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_b

    .line 279
    :cond_216
    const/16 v33, 0x193

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_226

    .line 280
    new-instance v33, Lcom/google/android/music/sync/api/ForbiddenException;

    const-string v34, "Forbidden"

    invoke-direct/range {v33 .. v34}, Lcom/google/android/music/sync/api/ForbiddenException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 281
    :cond_226
    const/16 v33, 0x194

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_236

    .line 282
    new-instance v33, Lcom/google/android/music/sync/api/ResourceNotFoundException;

    const-string v34, "Not found"

    invoke-direct/range {v33 .. v34}, Lcom/google/android/music/sync/api/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 283
    :cond_236
    const/16 v33, 0x199

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_24f

    .line 284
    new-instance v9, Lcom/google/android/music/sync/api/ConflictException;

    const-string v33, "Conflict detected."

    move-object/from16 v0, v33

    invoke-direct {v9, v0}, Lcom/google/android/music/sync/api/ConflictException;-><init>(Ljava/lang/String;)V

    .line 285
    .local v9, ce:Lcom/google/android/music/sync/api/ConflictException;
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Lcom/google/android/music/sync/api/ConflictException;->setConflictCount(I)V

    .line 286
    throw v9

    .line 287
    .end local v9           #ce:Lcom/google/android/music/sync/api/ConflictException;
    :cond_24f
    const/16 v33, 0x1f7

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_153

    .line 288
    const-string v33, "Retry-After"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    .line 289
    .local v28, retryAfterHeader:Lorg/apache/http/Header;
    if-eqz v28, :cond_275

    .line 293
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v29

    .line 297
    .local v29, retryAfterString:Ljava/lang/String;
    :try_start_267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    const-wide/16 v35, 0x3e8

    div-long v33, v33, v35

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_272
    .catch Ljava/lang/NumberFormatException; {:try_start_267 .. :try_end_272} :catch_284

    move-result-wide v35

    add-long v26, v33, v35

    .line 310
    .end local v29           #retryAfterString:Ljava/lang/String;
    :cond_275
    :goto_275
    new-instance v10, Lcom/google/android/music/sync/api/ServiceUnavailableException;

    const-string v33, "Service unavailable."

    move-object/from16 v0, v33

    invoke-direct {v10, v0}, Lcom/google/android/music/sync/api/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    .line 312
    .local v10, e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    move-wide/from16 v0, v26

    invoke-virtual {v10, v0, v1}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->setRetryAfter(J)V

    .line 313
    throw v10

    .line 299
    .end local v10           #e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    .restart local v29       #retryAfterString:Ljava/lang/String;
    :catch_284
    move-exception v10

    .line 302
    .local v10, e:Ljava/lang/NumberFormatException;
    :try_start_285
    new-instance v32, Landroid/text/format/Time;

    invoke-direct/range {v32 .. v32}, Landroid/text/format/Time;-><init>()V

    .line 303
    .local v32, time:Landroid/text/format/Time;
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 304
    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v33

    const-wide/16 v35, 0x3e8

    div-long v26, v33, v35
    :try_end_29b
    .catch Landroid/util/TimeFormatException; {:try_start_285 .. :try_end_29b} :catch_29c

    goto :goto_275

    .line 305
    .end local v32           #time:Landroid/text/format/Time;
    :catch_29c
    move-exception v11

    .line 306
    .local v11, e2:Landroid/util/TimeFormatException;
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Unable to parse "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_275

    .line 336
    .end local v5           #authToken:Ljava/lang/String;
    .end local v10           #e:Ljava/lang/NumberFormatException;
    .end local v11           #e2:Landroid/util/TimeFormatException;
    .end local v24           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v28           #retryAfterHeader:Lorg/apache/http/Header;
    .end local v29           #retryAfterString:Ljava/lang/String;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buf:[B
    .restart local v8       #bytesRead:I
    .restart local v13       #errorMessage:Ljava/lang/String;
    .restart local v19       #in:Ljava/io/InputStream;
    :cond_2be
    :try_start_2be
    new-instance v14, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2c9
    .catchall {:try_start_2be .. :try_end_2c9} :catchall_1a7

    .line 337
    .end local v13           #errorMessage:Ljava/lang/String;
    .local v14, errorMessage:Ljava/lang/String;
    :try_start_2c9
    sget-boolean v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v33, :cond_2d4

    .line 338
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-static {v0, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d4
    .catchall {:try_start_2c9 .. :try_end_2d4} :catchall_34a

    :cond_2d4
    move-object v13, v14

    .line 342
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buf:[B
    .end local v8           #bytesRead:I
    .end local v14           #errorMessage:Ljava/lang/String;
    .end local v19           #in:Ljava/io/InputStream;
    .restart local v13       #errorMessage:Ljava/lang/String;
    :cond_2d5
    if-eqz v12, :cond_2da

    .line 343
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 346
    :cond_2da
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Received "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " status code"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 347
    .local v15, exceptionMessage:Ljava/lang/String;
    if-eqz v13, :cond_314

    .line 348
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ": "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 350
    :cond_314
    const/16 v33, 0x191

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_324

    .line 351
    new-instance v33, Landroid/accounts/AuthenticatorException;

    const-string v34, "Auth token not excepted.  Bailing."

    invoke-direct/range {v33 .. v34}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 353
    :cond_324
    new-instance v10, Lcom/google/android/music/sync/common/SyncHttpException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Http request returned an error code: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-direct {v10, v0, v1}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;I)V

    .line 355
    .local v10, e:Lcom/google/android/music/sync/common/SyncHttpException;
    move-wide/from16 v0, v26

    invoke-virtual {v10, v0, v1}, Lcom/google/android/music/sync/common/SyncHttpException;->setRetryAfter(J)V

    .line 356
    throw v10

    .line 342
    .end local v10           #e:Lcom/google/android/music/sync/common/SyncHttpException;
    .end local v13           #errorMessage:Ljava/lang/String;
    .end local v15           #exceptionMessage:Ljava/lang/String;
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buf:[B
    .restart local v8       #bytesRead:I
    .restart local v14       #errorMessage:Ljava/lang/String;
    .restart local v19       #in:Ljava/io/InputStream;
    :catchall_34a
    move-exception v33

    move-object v13, v14

    .end local v14           #errorMessage:Ljava/lang/String;
    .restart local v13       #errorMessage:Ljava/lang/String;
    goto/16 :goto_1a8
.end method

.method private getItem(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .registers 13
    .parameter "account"
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 713
    .local p3, itemInstance:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    iget-object v6, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p3, v6, p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v5

    .line 714
    .local v5, url:Lcom/google/android/music/sync/api/MusicUrl;
    new-instance v3, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;

    invoke-direct {v3}, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;-><init>()V

    .line 715
    .local v3, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    const/4 v2, 0x0

    .line 717
    .local v2, in:Ljava/io/InputStream;
    :try_start_c
    invoke-virtual {v5}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, p1, v6}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-result-object v4

    .line 719
    .local v4, response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    iget-object v2, v4, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 720
    if-nez v2, :cond_45

    .line 721
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Received an empty entity body in a getEntity request."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_3e
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_c .. :try_end_20} :catch_20
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_c .. :try_end_20} :catch_66
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_c .. :try_end_20} :catch_71

    .line 733
    .end local v4           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_20
    move-exception v0

    .line 734
    .local v0, e:Lcom/google/android/music/store/InvalidDataException;
    :try_start_21
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid data on fetch from server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/music/store/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_3e

    .line 742
    .end local v0           #e:Lcom/google/android/music/store/InvalidDataException;
    :catchall_3e
    move-exception v6

    if-eqz v2, :cond_44

    .line 744
    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_7e

    .line 746
    :cond_44
    :goto_44
    throw v6

    .line 723
    .restart local v4       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_45
    const/4 v1, 0x0

    .line 725
    .local v1, entity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :try_start_46
    instance-of v6, p3, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v6, :cond_54

    .line 726
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/Track;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/Track;
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_3e
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_46 .. :try_end_4d} :catch_20
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_46 .. :try_end_4d} :catch_66
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_46 .. :try_end_4d} :catch_71

    move-result-object v1

    .line 742
    :cond_4e
    :goto_4e
    if-eqz v2, :cond_53

    .line 744
    :try_start_50
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_7c

    .line 746
    :cond_53
    :goto_53
    return-object v1

    .line 727
    :cond_54
    :try_start_54
    instance-of v6, p3, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v6, :cond_5d

    .line 728
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v1

    goto :goto_4e

    .line 729
    :cond_5d
    instance-of v6, p3, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v6, :cond_4e

    .line 730
    invoke-static {v2}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_3e
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_54 .. :try_end_64} :catch_20
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_54 .. :try_end_64} :catch_66
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_54 .. :try_end_64} :catch_71

    move-result-object v1

    goto :goto_4e

    .line 735
    .end local v1           #entity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .end local v4           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_66
    move-exception v0

    .line 736
    .local v0, e:Lcom/google/android/music/sync/api/ConflictException;
    :try_start_67
    new-instance v6, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v7, "Conflict detected, but this should not happen for a get."

    const/16 v8, 0x199

    invoke-direct {v6, v7, v0, v8}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v6

    .line 738
    .end local v0           #e:Lcom/google/android/music/sync/api/ConflictException;
    :catch_71
    move-exception v0

    .line 739
    .local v0, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v6, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v7, "Not-modified status, but this should not happen for a get."

    const/16 v8, 0x130

    invoke-direct {v6, v7, v0, v8}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v6
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_3e

    .line 745
    .end local v0           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    .restart local v1       #entity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .restart local v4       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_7c
    move-exception v6

    goto :goto_53

    .end local v1           #entity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    .end local v4           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_7e
    move-exception v7

    goto :goto_44
.end method

.method private getLoggingId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 188
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 190
    .local v0, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_a
    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 192
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 195
    .end local v0           #preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :cond_13
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;

    return-object v1

    .line 192
    .restart local v0       #preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :catchall_16
    move-exception v1

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v1
.end method

.method private logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 12
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x4000

    .line 369
    if-nez p1, :cond_5

    .line 394
    .end local p1
    :goto_4
    return-object p1

    .line 380
    .restart local p1
    :cond_5
    const/16 v2, 0x4000

    .line 381
    .local v2, bufferSize:I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 382
    .local v0, bin:Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 383
    const/16 v5, 0x4000

    .line 384
    .local v5, wanted:I
    const/4 v4, 0x0

    .line 385
    .local v4, totalReceived:I
    new-array v1, v5, [B

    .line 386
    .local v1, buf:[B
    :goto_14
    if-lez v5, :cond_1c

    .line 387
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 388
    .local v3, got:I
    if-gtz v3, :cond_2e

    .line 392
    .end local v3           #got:I
    :cond_1c
    sget-object v6, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object p1, v0

    .line 394
    goto :goto_4

    .line 389
    .restart local v3       #got:I
    :cond_2e
    sub-int/2addr v5, v3

    .line 390
    add-int/2addr v4, v3

    .line 391
    goto :goto_14
.end method

.method private makeUpdateRequestCreator(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(TT;)",
            "Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    .local p1, item:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->validateForUpstreamUpdate()V

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, entryBytes:[B
    instance-of v4, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v4, :cond_35

    .line 466
    new-instance v3, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v3}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    .line 467
    .local v3, trackMutation:Lcom/google/android/music/sync/google/model/Track;
    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/sync/google/model/Track;->setRemoteId(Ljava/lang/String;)V

    move-object v4, p1

    .line 468
    check-cast v4, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v4}, Lcom/google/android/music/sync/google/model/Track;->getRatingAsInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/sync/google/model/Track;->setRating(I)V

    .line 470
    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLastModifiedTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/sync/google/model/Track;->setLastModifiedTimestamp(J)V

    .line 471
    invoke-virtual {v3}, Lcom/google/android/music/sync/google/model/Track;->serializeAsJson()[B

    move-result-object v1

    .line 477
    .end local v3           #trackMutation:Lcom/google/android/music/sync/google/model/Track;
    :goto_29
    iget-object v4, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v4}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 479
    .local v0, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v2, Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;

    invoke-direct {v2, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 480
    .local v2, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    return-object v2

    .line 474
    .end local v0           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v2           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    :cond_35
    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->serializeAsJson()[B

    move-result-object v1

    goto :goto_29
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 173
    return-void
.end method

.method public createMagicPlaylist(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_23

    .line 778
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This magic-playlist request is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_23
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forMagicPlaylist()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    .line 782
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->serializeAsJson()[B

    move-result-object v1

    .line 783
    iget-object v2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 785
    new-instance v2, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    invoke-direct {v2, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 787
    const/4 v1, 0x0

    .line 790
    :try_start_37
    invoke-virtual {v0}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-result-object v0

    .line 792
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 793
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_56
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_37 .. :try_end_44} :catch_4b
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_37 .. :try_end_44} :catch_5d
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_37 .. :try_end_44} :catch_68

    move-result-object v0

    .line 806
    if-eqz v1, :cond_4a

    .line 808
    :try_start_47
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_73

    .line 813
    :cond_4a
    :goto_4a
    return-object v0

    .line 794
    :catch_4b
    move-exception v0

    .line 795
    :try_start_4c
    new-instance v2, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v3, "Conflict detected, but this is unexpected for magic playlist creation."

    const/16 v4, 0x199

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_56

    .line 806
    :catchall_56
    move-exception v0

    if-eqz v1, :cond_5c

    .line 808
    :try_start_59
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_75

    .line 810
    :cond_5c
    :goto_5c
    throw v0

    .line 798
    :catch_5d
    move-exception v0

    .line 799
    :try_start_5e
    new-instance v2, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v3, "Resource-not-found detected, but this is unexpected for magic playlist creation."

    const/16 v4, 0x194

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 802
    :catch_68
    move-exception v0

    .line 803
    new-instance v2, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v3, "Not-modified-found detected, but this is unexpected for magic playlist creation."

    const/16 v4, 0x130

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_56

    .line 809
    :catch_73
    move-exception v1

    goto :goto_4a

    :catch_75
    move-exception v1

    goto :goto_5c
.end method

.method public getItems(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .registers 26
    .parameter "account"
    .parameter "pageSize"
    .parameter "etag"
    .parameter "updatedMin"
    .parameter "continuationToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/store/InvalidDataException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 597
    .local p7, itemInstance:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    const/4 v13, 0x0

    .line 598
    .local v13, url:Lcom/google/android/music/sync/api/MusicUrl;
    const/4 v11, 0x0

    .line 599
    .local v11, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "music_use_downstream_posts"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v14

    .line 601
    .local v14, useDownstreamPosts:Z
    if-eqz v14, :cond_96

    .line 602
    new-instance v5, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;

    invoke-direct {v5}, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;-><init>()V

    .line 603
    .local v5, feedAsPostRequest:Lcom/google/android/music/sync/google/model/FeedAsPostRequest;
    if-eqz p6, :cond_91

    .line 604
    move-object/from16 v0, p6

    iput-object v0, v5, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->mStartToken:Ljava/lang/String;

    .line 610
    :goto_1f
    move/from16 v0, p2

    iput v0, v5, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->mMaxResults:I

    .line 612
    invoke-virtual {v5}, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->serializeAsJson()[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v3

    .line 614
    .local v3, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v11, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    .end local v11           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-direct {v11, v3}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 616
    .restart local v11       #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p7

    invoke-interface {v0, v15}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v13

    .line 633
    .end local v3           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v5           #feedAsPostRequest:Lcom/google/android/music/sync/google/model/FeedAsPostRequest;
    :goto_40
    const-wide/16 v15, 0x0

    cmp-long v15, p4, v15

    if-eqz v15, :cond_51

    .line 634
    const-string v15, "updated-min"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 637
    :cond_51
    const/4 v7, 0x0

    .line 639
    .local v7, in:Ljava/io/InputStream;
    :try_start_52
    invoke-virtual {v13}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1, v15}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-result-object v12

    .line 641
    .local v12, response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    iget-object v7, v12, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 642
    iget-object v9, v12, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mEtag:Ljava/lang/String;

    .line 643
    .local v9, newEtag:Ljava/lang/String;
    if-nez v7, :cond_ca

    .line 644
    new-instance v15, Ljava/io/IOException;

    const-string v16, "Received an empty entity body in a getEntity request."

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_6c
    .catchall {:try_start_52 .. :try_end_6c} :catchall_8a
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_52 .. :try_end_6c} :catch_6c
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_52 .. :try_end_6c} :catch_138

    .line 669
    .end local v9           #newEtag:Ljava/lang/String;
    .end local v12           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_6c
    move-exception v2

    .line 670
    .local v2, e:Lcom/google/android/music/store/InvalidDataException;
    :try_start_6d
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid data on fetch from server: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Lcom/google/android/music/store/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_8a
    .catchall {:try_start_6d .. :try_end_8a} :catchall_8a

    .line 675
    .end local v2           #e:Lcom/google/android/music/store/InvalidDataException;
    :catchall_8a
    move-exception v15

    if-eqz v7, :cond_90

    .line 677
    :try_start_8d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_149

    .line 679
    :cond_90
    :goto_90
    throw v15

    .line 608
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v5       #feedAsPostRequest:Lcom/google/android/music/sync/google/model/FeedAsPostRequest;
    :cond_91
    const-string v15, "0"

    iput-object v15, v5, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->mStartToken:Ljava/lang/String;

    goto :goto_1f

    .line 618
    .end local v5           #feedAsPostRequest:Lcom/google/android/music/sync/google/model/FeedAsPostRequest;
    :cond_96
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p7

    invoke-interface {v0, v15}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v13

    .line 619
    new-instance v6, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;

    invoke-direct {v6}, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;-><init>()V

    .line 620
    .local v6, getRequestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;
    move-object v11, v6

    .line 621
    move-object/from16 v0, p3

    #setter for: Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;->mEtag:Ljava/lang/String;
    invoke-static {v6, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;->access$002(Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    if-eqz p6, :cond_c0

    .line 623
    const-string v15, "start-token"

    move-object/from16 v0, p6

    invoke-virtual {v13, v15, v0}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 629
    :goto_b4
    const-string v15, "max-results"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_40

    .line 627
    :cond_c0
    const-string v15, "start-token"

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b4

    .line 646
    .end local v6           #getRequestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v9       #newEtag:Ljava/lang/String;
    .restart local v12       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_ca
    const/4 v4, 0x0

    .line 648
    .local v4, feed:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;,"Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed<TT;>;"
    :try_start_cb
    move-object/from16 v0, p7

    instance-of v15, v0, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v15, :cond_118

    .line 649
    invoke-static {v7}, Lcom/google/android/music/sync/google/model/TrackFeed;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/TrackFeed;

    move-result-object v4

    .line 655
    :cond_d5
    :goto_d5
    const/4 v8, 0x0

    .line 656
    .local v8, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v10, 0x0

    .line 657
    .local v10, nextPageToken:Ljava/lang/String;
    if-eqz v4, :cond_103

    .line 658
    invoke-interface {v4}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;->getItemList()Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_12e

    .line 659
    sget-object v15, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No content in \'data\' field in GET sync response for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_ff
    invoke-interface {v4}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;->getNextPageToken()Ljava/lang/String;

    move-result-object v10

    .line 666
    :cond_103
    new-instance v16, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    if-nez v8, :cond_133

    sget-object v15, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_10d
    move-object/from16 v0, v16

    invoke-direct {v0, v15, v10, v9}, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;-><init>(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_112
    .catchall {:try_start_cb .. :try_end_112} :catchall_8a
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_cb .. :try_end_112} :catch_6c
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_cb .. :try_end_112} :catch_138

    .line 675
    if-eqz v7, :cond_117

    .line 677
    :try_start_114
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_147

    .line 679
    :cond_117
    :goto_117
    return-object v16

    .line 650
    .end local v8           #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v10           #nextPageToken:Ljava/lang/String;
    :cond_118
    :try_start_118
    move-object/from16 v0, p7

    instance-of v15, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v15, :cond_123

    .line 651
    invoke-static {v7}, Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;

    move-result-object v4

    goto :goto_d5

    .line 652
    :cond_123
    move-object/from16 v0, p7

    instance-of v15, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v15, :cond_d5

    .line 653
    invoke-static {v7}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntryFeed;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntryFeed;

    move-result-object v4

    goto :goto_d5

    .line 662
    .restart local v8       #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .restart local v10       #nextPageToken:Ljava/lang/String;
    :cond_12e
    invoke-interface {v4}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;->getItemList()Ljava/util/List;

    move-result-object v8

    goto :goto_ff

    .line 666
    :cond_133
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_136
    .catchall {:try_start_118 .. :try_end_136} :catchall_8a
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_118 .. :try_end_136} :catch_6c
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_118 .. :try_end_136} :catch_138

    move-result-object v15

    goto :goto_10d

    .line 671
    .end local v4           #feed:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;,"Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed<TT;>;"
    .end local v8           #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v9           #newEtag:Ljava/lang/String;
    .end local v10           #nextPageToken:Ljava/lang/String;
    .end local v12           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_138
    move-exception v2

    .line 672
    .local v2, e:Lcom/google/android/music/sync/api/ConflictException;
    :try_start_139
    new-instance v15, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v16, "Conflict detected, but this should not happen for a get."

    const/16 v17, 0x199

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v15, v0, v2, v1}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v15
    :try_end_147
    .catchall {:try_start_139 .. :try_end_147} :catchall_8a

    .line 678
    .end local v2           #e:Lcom/google/android/music/sync/api/ConflictException;
    .restart local v4       #feed:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;,"Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed<TT;>;"
    .restart local v8       #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .restart local v9       #newEtag:Ljava/lang/String;
    .restart local v10       #nextPageToken:Ljava/lang/String;
    .restart local v12       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_147
    move-exception v15

    goto :goto_117

    .end local v4           #feed:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;,"Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed<TT;>;"
    .end local v8           #items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v9           #newEtag:Ljava/lang/String;
    .end local v10           #nextPageToken:Ljava/lang/String;
    .end local v12           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :catch_149
    move-exception v16

    goto/16 :goto_90
.end method

.method public getPlaylist(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 762
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItem(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    return-object v0
.end method

.method public getPlaylistEntries(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .registers 15
    .parameter "account"
    .parameter "pageSize"
    .parameter "etag"
    .parameter "updatedMin"
    .parameter "continuationToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<",
            "Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 704
    sget-object v7, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistEntryInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItems(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistEntry(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 769
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistEntryInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItem(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    return-object v0
.end method

.method public getPlaylists(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .registers 15
    .parameter "account"
    .parameter "pageSize"
    .parameter "etag"
    .parameter "updatedMin"
    .parameter "continuationToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<",
            "Lcom/google/android/music/sync/google/model/SyncablePlaylist;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 696
    sget-object v7, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItems(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v0

    return-object v0
.end method

.method public getTrack(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/google/model/Track;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 755
    const-class v0, Lcom/google/android/music/sync/google/model/Track;

    sget-object v1, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sTrackInstance:Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItem(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;

    return-object v0
.end method

.method public getTracks(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .registers 15
    .parameter "account"
    .parameter "pageSize"
    .parameter "etag"
    .parameter "updatedMin"
    .parameter "continuationToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/sync/api/MusicApiClient$GetResult",
            "<",
            "Lcom/google/android/music/sync/google/model/Track;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 688
    sget-object v7, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sTrackInstance:Lcom/google/android/music/sync/google/model/Track;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getItems(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    move-result-object v0

    return-object v0
.end method

.method public mutateItem(Landroid/accounts/Account;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;Lcom/google/android/music/sync/api/MusicApiClient$OpType;)V
    .registers 15
    .parameter "account"
    .parameter
    .parameter "opType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "TT;",
            "Lcom/google/android/music/sync/api/MusicApiClient$OpType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/store/InvalidDataException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;
        }
    .end annotation

    .prologue
    .line 401
    .local p2, item:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    if-nez p2, :cond_a

    .line 402
    new-instance v8, Lcom/google/android/music/store/InvalidDataException;

    const-string v9, "Trying to upsync a null entity in a mutation."

    invoke-direct {v8, v9}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 404
    :cond_a
    const/4 v7, 0x0

    .line 406
    .local v7, url:Lcom/google/android/music/sync/api/MusicUrl;
    const/4 v5, 0x0

    .line 407
    .local v5, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v8, :cond_3c

    .line 408
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->validateForUpstreamInsert()V

    .line 409
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2, v8}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v7

    .line 410
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->serializeAsJson()[B

    move-result-object v2

    .line 411
    .local v2, entryBytes:[B
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v8}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 413
    .local v1, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v5, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    .end local v5           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-direct {v5, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 425
    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v2           #entryBytes:[B
    .restart local v5       #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    :cond_28
    :goto_28
    :try_start_28
    invoke-virtual {v7}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, p1, v8}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :try_end_2f
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_28 .. :try_end_2f} :catch_66

    move-result-object v6

    .line 430
    .local v6, response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    iget-object v3, v6, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 433
    .local v3, in:Ljava/io/InputStream;
    :try_start_32
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_9f

    if-ne p3, v8, :cond_71

    .line 450
    if-eqz v3, :cond_3b

    .line 452
    :try_start_38
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_a6

    .line 457
    :cond_3b
    :goto_3b
    return-void

    .line 414
    .end local v3           #in:Ljava/io/InputStream;
    .end local v6           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_3c
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v8, :cond_4f

    .line 415
    invoke-direct {p0, p2}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->makeUpdateRequestCreator(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;

    move-result-object v5

    .line 416
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v7

    goto :goto_28

    .line 417
    :cond_4f
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v8, :cond_28

    .line 418
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->validateForUpstreamDelete()V

    .line 419
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v7

    .line 420
    new-instance v5, Lcom/google/android/music/sync/api/MusicApiClientImpl$DeleteRequestCreator;

    .end local v5           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-direct {v5}, Lcom/google/android/music/sync/api/MusicApiClientImpl$DeleteRequestCreator;-><init>()V

    .restart local v5       #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    goto :goto_28

    .line 426
    :catch_66
    move-exception v0

    .line 427
    .local v0, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v8, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v9, "Unexpected not-modified status returned on a mutation"

    const/16 v10, 0x130

    invoke-direct {v8, v9, v0, v10}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v8

    .line 438
    .end local v0           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_71
    const/4 v4, 0x0

    .line 439
    .local v4, mutatedEntity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :try_start_72
    instance-of v8, p2, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v8, :cond_8d

    .line 440
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/Track;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/Track;

    move-result-object v4

    .line 446
    :cond_7a
    :goto_7a
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v8, :cond_85

    .line 447
    invoke-interface {v4}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->setRemoteId(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_9f

    .line 450
    :cond_85
    if-eqz v3, :cond_3b

    .line 452
    :try_start_87
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_3b

    .line 453
    :catch_8b
    move-exception v8

    goto :goto_3b

    .line 441
    :cond_8d
    :try_start_8d
    instance-of v8, p2, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v8, :cond_96

    .line 442
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v4

    goto :goto_7a

    .line 443
    :cond_96
    instance-of v8, p2, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v8, :cond_7a

    .line 444
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_9f

    move-result-object v4

    goto :goto_7a

    .line 450
    .end local v4           #mutatedEntity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :catchall_9f
    move-exception v8

    if-eqz v3, :cond_a5

    .line 452
    :try_start_a2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a8

    .line 454
    :cond_a5
    :goto_a5
    throw v8

    .line 453
    :catch_a6
    move-exception v8

    goto :goto_3b

    :catch_a8
    move-exception v9

    goto :goto_a5
.end method

.method public mutateItems(Landroid/accounts/Account;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;",
            ">(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/store/InvalidDataException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    :cond_b
    :goto_b
    return-object v0

    .line 492
    :cond_c
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 493
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    .line 497
    instance-of v2, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_8e

    .line 498
    new-instance v2, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;

    invoke-direct {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;-><init>()V

    .line 499
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 500
    const-class v4, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    .line 501
    new-instance v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;

    invoke-direct {v4}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;-><init>()V

    .line 502
    iget-boolean v5, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    if-eqz v5, :cond_4e

    .line 503
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->validateForUpstreamDelete()V

    .line 504
    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;->mDeletePlaylistRemoteId:Ljava/lang/String;

    .line 512
    :goto_4a
    invoke-virtual {v2, v4}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;->addRequest(Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;)V

    goto :goto_26

    .line 505
    :cond_4e
    iget-object v5, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    if-eqz v5, :cond_58

    .line 506
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->validateForUpstreamUpdate()V

    .line 507
    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;->mUpdatePlaylist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    goto :goto_4a

    .line 509
    :cond_58
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->validateForUpstreamInsert()V

    .line 510
    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;->mCreatePlaylist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    goto :goto_4a

    .line 514
    :cond_5e
    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;->serializeAsJson()[B

    move-result-object v0

    .line 555
    :goto_62
    iget-object v2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 556
    new-instance v2, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    invoke-direct {v2, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 559
    :try_start_6d
    invoke-virtual {v1}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :try_end_74
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_6d .. :try_end_74} :catch_159
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_6d .. :try_end_74} :catch_164

    move-result-object v0

    .line 569
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 571
    :try_start_77
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/BatchMutateResponse;

    move-result-object v0

    .line 573
    iget-object v2, v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;

    if-nez v2, :cond_16f

    .line 574
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Received empty data in batch mutate response."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_87

    .line 582
    :catchall_87
    move-exception v0

    if-eqz v1, :cond_8d

    .line 584
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_18f

    .line 586
    :cond_8d
    :goto_8d
    throw v0

    .line 515
    :cond_8e
    instance-of v2, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_e7

    .line 516
    new-instance v2, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;

    invoke-direct {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;-><init>()V

    .line 517
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 518
    const-class v4, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    .line 519
    new-instance v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;

    invoke-direct {v4}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;-><init>()V

    .line 520
    iget-boolean v5, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    if-eqz v5, :cond_c3

    .line 521
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->validateForUpstreamDelete()V

    .line 522
    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;->mDeletePlaylistEntryRemoteId:Ljava/lang/String;

    .line 530
    :goto_bf
    invoke-virtual {v2, v4}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;->addRequest(Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;)V

    goto :goto_9b

    .line 523
    :cond_c3
    iget-object v5, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    if-eqz v5, :cond_cd

    .line 524
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->validateForUpstreamUpdate()V

    .line 525
    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;->mUpdatePlaylistEntry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    goto :goto_bf

    .line 527
    :cond_cd
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->validateForUpstreamInsert()V

    .line 528
    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;->mCreatePlaylistEntry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    goto :goto_bf

    .line 532
    :cond_d3
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;->serializeAsJson()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;->serializeAsJson()[B

    move-result-object v0

    goto/16 :goto_62

    .line 534
    :cond_e7
    instance-of v0, v0, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v0, :cond_14a

    .line 535
    new-instance v2, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;

    invoke-direct {v2}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;-><init>()V

    .line 536
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_136

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 537
    const-class v4, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;

    .line 538
    new-instance v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;

    invoke-direct {v4}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;-><init>()V

    .line 539
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/Track;->validateForUpstreamUpdate()V

    .line 541
    new-instance v5, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v5}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    iput-object v5, v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;->mUpdateTrack:Lcom/google/android/music/sync/google/model/Track;

    .line 542
    iget-object v5, v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;->mUpdateTrack:Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/Track;->getRemoteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/sync/google/model/Track;->setRemoteId(Ljava/lang/String;)V

    .line 543
    iget-object v5, v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;->mUpdateTrack:Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/Track;->getRatingAsInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/sync/google/model/Track;->setRating(I)V

    .line 545
    iget-object v5, v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;->mUpdateTrack:Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/Track;->getLastModifiedTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/sync/google/model/Track;->setLastModifiedTimestamp(J)V

    .line 547
    invoke-virtual {v2, v4}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->addRequest(Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;)V

    goto :goto_f4

    .line 549
    :cond_136
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->serializeAsJson()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->serializeAsJson()[B

    move-result-object v0

    goto/16 :goto_62

    .line 552
    :cond_14a
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "Unrecognized item type in a batch mutate."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Unrecognized item type in a batch mutate."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :catch_159
    move-exception v0

    .line 561
    new-instance v1, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v2, "Unexpected not-modified status returned on a batched mutation"

    const/16 v3, 0x130

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 564
    :catch_164
    move-exception v0

    .line 565
    new-instance v1, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v2, "Unexpected conflict status returned on a batched mutation"

    const/16 v3, 0x199

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 576
    :cond_16f
    :try_start_16f
    iget-object v2, v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_183

    .line 577
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Mismatch between number of entries in request and response"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_183
    iget-object v0, v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;
    :try_end_185
    .catchall {:try_start_16f .. :try_end_185} :catchall_87

    .line 582
    if-eqz v1, :cond_b

    .line 584
    :try_start_187
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18a} :catch_18c

    goto/16 :goto_b

    .line 585
    :catch_18c
    move-exception v1

    goto/16 :goto_b

    :catch_18f
    move-exception v1

    goto/16 :goto_8d
.end method

.method public reportTrackStats(Landroid/accounts/Account;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/music/sync/common/QueueableSyncEntity;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SyncHttpException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/api/BadRequestException;,
            Lcom/google/android/music/sync/api/ForbiddenException;,
            Lcom/google/android/music/sync/api/ServiceUnavailableException;,
            Lcom/google/android/music/sync/api/ConflictException;,
            Lcom/google/android/music/sync/api/ResourceNotFoundException;,
            Lcom/google/android/music/sync/api/NotModifiedException;
        }
    .end annotation

    .prologue
    .line 820
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 821
    :cond_8
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "Track stats list is null or empty. Skip reporting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :goto_f
    return-void

    .line 825
    :cond_10
    const-class v0, Lcom/google/android/music/sync/google/model/TrackStat;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/TrackStat;

    .line 826
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/model/TrackStat;->getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    .line 829
    new-instance v2, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;

    invoke-direct {v2}, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;-><init>()V

    .line 830
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 831
    const-class v4, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v2, v0}, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;->addTrackStat(Lcom/google/android/music/sync/google/model/TrackStat;)V

    goto :goto_2c

    .line 833
    :cond_44
    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;->serializeAsJson()[B

    move-result-object v0

    .line 835
    iget-object v2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 836
    new-instance v2, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    invoke-direct {v2, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 837
    invoke-virtual {v1}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    goto :goto_f
.end method
