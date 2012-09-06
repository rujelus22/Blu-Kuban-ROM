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
    .line 72
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    .line 83
    new-instance v0, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sTrackInstance:Lcom/google/android/music/sync/google/model/Track;

    .line 84
    new-instance v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;-><init>()V

    sput-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->sPlaylistInstance:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    .line 85
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
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    .line 167
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 169
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    sget-object v2, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/music/DebugUtils;->isAutoLogAll()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x3

    :goto_23
    invoke-virtual {v1, v2, v0}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    .line 171
    return-void

    .line 169
    :cond_2d
    const/4 v0, 0x2

    goto :goto_23
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
    .line 208
    const/16 v25, 0x0

    .line 209
    .local v25, response:Lorg/apache/http/HttpResponse;
    const/16 v30, 0x1f4

    .line 210
    .local v30, status:I
    const/16 v23, 0xa

    .line 211
    .local v23, redirectsLeft:I
    const/4 v4, 0x1

    .line 213
    .local v4, authRetriesLeft:I
    const-wide/16 v26, 0x0

    .line 215
    .local v26, retryAfter:J
    const/16 v31, 0x0

    .line 216
    .local v31, statusLine:Lorg/apache/http/StatusLine;
    :goto_b
    if-lez v23, :cond_153

    if-lez v4, :cond_153

    .line 217
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;->createRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v24

    .line 218
    .local v24, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {v24 .. v24}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/common/AuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, authToken:Ljava/lang/String;
    if-nez v5, :cond_32

    .line 221
    new-instance v33, Landroid/accounts/AuthenticatorException;

    const-string v34, "Null auth token.  Bailing."

    invoke-direct/range {v33 .. v34}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 223
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

    .line 224
    const-string v33, "X-Device-Logging-ID"

    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->getLoggingId()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v25

    .line 227
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    .line 228
    if-nez v31, :cond_7d

    .line 229
    new-instance v33, Ljava/io/IOException;

    const-string v34, "StatusLine is null -- should not happen."

    invoke-direct/range {v33 .. v34}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 231
    :cond_7d
    sget-boolean v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v33, :cond_c6

    .line 232
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
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

    .line 234
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

    .line 233
    add-int/lit8 v18, v18, 0x1

    goto :goto_97

    .line 237
    .end local v3           #arr$:[Lorg/apache/http/Header;
    .end local v16           #h:Lorg/apache/http/Header;
    .end local v18           #i$:I
    .end local v20           #len$:I
    :cond_c6
    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v30

    .line 238
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 240
    .local v12, entity:Lorg/apache/http/HttpEntity;
    const/16 v33, 0xc8

    move/from16 v0, v30

    move/from16 v1, v33

    if-lt v0, v1, :cond_129

    const/16 v33, 0x12c

    move/from16 v0, v30

    move/from16 v1, v33

    if-ge v0, v1, :cond_129

    .line 241
    const-string v33, "ETag"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 242
    .local v17, header:Lorg/apache/http/Header;
    if-nez v17, :cond_102

    const/16 v22, 0x0

    .line 243
    .local v22, newEtag:Ljava/lang/String;
    :goto_ec
    const/16 v33, 0xcc

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_107

    .line 244
    new-instance v33, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 250
    :goto_101
    return-object v33

    .line 242
    .end local v22           #newEtag:Ljava/lang/String;
    :cond_102
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v22

    goto :goto_ec

    .line 246
    .restart local v22       #newEtag:Ljava/lang/String;
    :cond_107
    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v19

    .line 247
    .local v19, in:Ljava/io/InputStream;
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const/16 v34, 0x3

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_11d

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v19

    .line 250
    :cond_11d
    new-instance v33, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_101

    .line 254
    .end local v17           #header:Lorg/apache/http/Header;
    .end local v19           #in:Ljava/io/InputStream;
    .end local v22           #newEtag:Ljava/lang/String;
    :cond_129
    const/16 v33, 0x12e

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_1d8

    .line 256
    if-eqz v12, :cond_136

    .line 257
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 259
    :cond_136
    const-string v33, "Location"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v21

    .line 260
    .local v21, location:Lorg/apache/http/Header;
    if-nez v21, :cond_1ae

    .line 261
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const/16 v34, 0x3

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v33

    if-eqz v33, :cond_153

    .line 262
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const-string v34, "Redirect requested but no Location specified."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v5           #authToken:Ljava/lang/String;
    .end local v12           #entity:Lorg/apache/http/HttpEntity;
    .end local v21           #location:Lorg/apache/http/Header;
    .end local v24           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_153
    sget-boolean v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v33, :cond_179

    .line 321
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

    .line 323
    :cond_179
    const/4 v13, 0x0

    .line 324
    .local v13, errorMessage:Ljava/lang/String;
    const/4 v12, 0x0

    .line 326
    .restart local v12       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v25, :cond_181

    .line 327
    :try_start_17d
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 329
    :cond_181
    if-eqz v12, :cond_2d5

    .line 330
    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v19

    .line 331
    .restart local v19       #in:Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 332
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v33, 0x2000

    move/from16 v0, v33

    new-array v7, v0, [B

    .line 333
    .local v7, buf:[B
    const/4 v8, -0x1

    .line 334
    .local v8, bytesRead:I
    :goto_193
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v8, v0, :cond_2be

    .line 335
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v6, v7, v0, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1a6
    .catchall {:try_start_17d .. :try_end_1a6} :catchall_1a7

    goto :goto_193

    .line 344
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buf:[B
    .end local v8           #bytesRead:I
    .end local v19           #in:Ljava/io/InputStream;
    :catchall_1a7
    move-exception v33

    :goto_1a8
    if-eqz v12, :cond_1ad

    .line 345
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1ad
    throw v33

    .line 267
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

    .line 268
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

    .line 270
    :cond_1d4
    add-int/lit8 v23, v23, -0x1

    .line 271
    goto/16 :goto_b

    .end local v21           #location:Lorg/apache/http/Header;
    :cond_1d8
    const/16 v33, 0x130

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_1e8

    .line 272
    new-instance v33, Lcom/google/android/music/sync/api/NotModifiedException;

    const-string v34, "No content."

    invoke-direct/range {v33 .. v34}, Lcom/google/android/music/sync/api/NotModifiedException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 273
    :cond_1e8
    const/16 v33, 0x190

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_1f8

    .line 274
    new-instance v33, Lcom/google/android/music/sync/api/BadRequestException;

    const-string v34, "Bad request"

    invoke-direct/range {v33 .. v34}, Lcom/google/android/music/sync/api/BadRequestException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 275
    :cond_1f8
    const/16 v33, 0x191

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_216

    .line 276
    if-eqz v12, :cond_205

    .line 277
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 279
    :cond_205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mAuthInfo:Lcom/google/android/music/sync/common/AuthInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5}, Lcom/google/android/music/sync/common/AuthInfo;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 280
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_b

    .line 281
    :cond_216
    const/16 v33, 0x193

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_226

    .line 282
    new-instance v33, Lcom/google/android/music/sync/api/ForbiddenException;

    const-string v34, "Forbidden"

    invoke-direct/range {v33 .. v34}, Lcom/google/android/music/sync/api/ForbiddenException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 283
    :cond_226
    const/16 v33, 0x194

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_236

    .line 284
    new-instance v33, Lcom/google/android/music/sync/api/ResourceNotFoundException;

    const-string v34, "Not found"

    invoke-direct/range {v33 .. v34}, Lcom/google/android/music/sync/api/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 285
    :cond_236
    const/16 v33, 0x199

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_24f

    .line 286
    new-instance v9, Lcom/google/android/music/sync/api/ConflictException;

    const-string v33, "Conflict detected."

    move-object/from16 v0, v33

    invoke-direct {v9, v0}, Lcom/google/android/music/sync/api/ConflictException;-><init>(Ljava/lang/String;)V

    .line 287
    .local v9, ce:Lcom/google/android/music/sync/api/ConflictException;
    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Lcom/google/android/music/sync/api/ConflictException;->setConflictCount(I)V

    .line 288
    throw v9

    .line 289
    .end local v9           #ce:Lcom/google/android/music/sync/api/ConflictException;
    :cond_24f
    const/16 v33, 0x1f7

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_153

    .line 290
    const-string v33, "Retry-After"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v28

    .line 291
    .local v28, retryAfterHeader:Lorg/apache/http/Header;
    if-eqz v28, :cond_275

    .line 295
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v29

    .line 299
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

    .line 312
    .end local v29           #retryAfterString:Ljava/lang/String;
    :cond_275
    :goto_275
    new-instance v10, Lcom/google/android/music/sync/api/ServiceUnavailableException;

    const-string v33, "Service unavailable."

    move-object/from16 v0, v33

    invoke-direct {v10, v0}, Lcom/google/android/music/sync/api/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    .line 314
    .local v10, e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    move-wide/from16 v0, v26

    invoke-virtual {v10, v0, v1}, Lcom/google/android/music/sync/api/ServiceUnavailableException;->setRetryAfter(J)V

    .line 315
    throw v10

    .line 301
    .end local v10           #e:Lcom/google/android/music/sync/api/ServiceUnavailableException;
    .restart local v29       #retryAfterString:Ljava/lang/String;
    :catch_284
    move-exception v10

    .line 304
    .local v10, e:Ljava/lang/NumberFormatException;
    :try_start_285
    new-instance v32, Landroid/text/format/Time;

    invoke-direct/range {v32 .. v32}, Landroid/text/format/Time;-><init>()V

    .line 305
    .local v32, time:Landroid/text/format/Time;
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 306
    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v33

    const-wide/16 v35, 0x3e8

    div-long v26, v33, v35
    :try_end_29b
    .catch Landroid/util/TimeFormatException; {:try_start_285 .. :try_end_29b} :catch_29c

    goto :goto_275

    .line 307
    .end local v32           #time:Landroid/text/format/Time;
    :catch_29c
    move-exception v11

    .line 308
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

    .line 338
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

    .line 339
    .end local v13           #errorMessage:Ljava/lang/String;
    .local v14, errorMessage:Ljava/lang/String;
    :try_start_2c9
    sget-boolean v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v33, :cond_2d4

    .line 340
    sget-object v33, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-static {v0, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d4
    .catchall {:try_start_2c9 .. :try_end_2d4} :catchall_34a

    :cond_2d4
    move-object v13, v14

    .line 344
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buf:[B
    .end local v8           #bytesRead:I
    .end local v14           #errorMessage:Ljava/lang/String;
    .end local v19           #in:Ljava/io/InputStream;
    .restart local v13       #errorMessage:Ljava/lang/String;
    :cond_2d5
    if-eqz v12, :cond_2da

    .line 345
    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 348
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

    .line 349
    .local v15, exceptionMessage:Ljava/lang/String;
    if-eqz v13, :cond_314

    .line 350
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

    .line 352
    :cond_314
    const/16 v33, 0x191

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_324

    .line 353
    new-instance v33, Landroid/accounts/AuthenticatorException;

    const-string v34, "Auth token not excepted.  Bailing."

    invoke-direct/range {v33 .. v34}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 355
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

    .line 357
    .local v10, e:Lcom/google/android/music/sync/common/SyncHttpException;
    move-wide/from16 v0, v26

    invoke-virtual {v10, v0, v1}, Lcom/google/android/music/sync/common/SyncHttpException;->setRetryAfter(J)V

    .line 358
    throw v10

    .line 344
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
    .registers 10
    .parameter
    .parameter
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
    const/4 v0, 0x0

    .line 737
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p3, v1, p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    .line 738
    new-instance v2, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;

    invoke-direct {v2}, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;-><init>()V

    .line 741
    :try_start_c
    invoke-virtual {v1}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, p1, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-result-object v1

    .line 743
    iget-object v1, v1, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_85
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_c .. :try_end_16} :catch_8e
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_c .. :try_end_16} :catch_65
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_c .. :try_end_16} :catch_73

    .line 744
    if-nez v1, :cond_45

    .line 745
    :try_start_18
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Received an empty entity body in a getEntity request."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_3e
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_18 .. :try_end_20} :catch_20
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_18 .. :try_end_20} :catch_8c
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_18 .. :try_end_20} :catch_8a

    .line 757
    :catch_20
    move-exception v0

    .line 758
    :goto_21
    :try_start_21
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid data on fetch from server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/music/store/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_3e

    .line 766
    :catchall_3e
    move-exception v0

    :goto_3f
    if-eqz v1, :cond_44

    .line 768
    :try_start_41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_83

    .line 770
    :cond_44
    :goto_44
    throw v0

    .line 749
    :cond_45
    :try_start_45
    instance-of v2, p3, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v2, :cond_53

    .line 750
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/Track;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/Track;
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_3e
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_45 .. :try_end_4c} :catch_20
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_45 .. :try_end_4c} :catch_8c
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_45 .. :try_end_4c} :catch_8a

    move-result-object v0

    .line 766
    :cond_4d
    :goto_4d
    if-eqz v1, :cond_52

    .line 768
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_81

    .line 770
    :cond_52
    :goto_52
    return-object v0

    .line 751
    :cond_53
    :try_start_53
    instance-of v2, p3, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_5c

    .line 752
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v0

    goto :goto_4d

    .line 753
    :cond_5c
    instance-of v2, p3, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_4d

    .line 754
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_3e
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_53 .. :try_end_63} :catch_20
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_53 .. :try_end_63} :catch_8c
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_53 .. :try_end_63} :catch_8a

    move-result-object v0

    goto :goto_4d

    .line 759
    :catch_65
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 760
    :goto_69
    :try_start_69
    new-instance v2, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v3, "Conflict detected, but this should not happen for a get."

    const/16 v4, 0x199

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 762
    :catch_73
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 763
    :goto_77
    new-instance v2, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v3, "Not-modified status, but this should not happen for a get."

    const/16 v4, 0x130

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_3e

    .line 769
    :catch_81
    move-exception v1

    goto :goto_52

    :catch_83
    move-exception v1

    goto :goto_44

    .line 766
    :catchall_85
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3f

    .line 762
    :catch_8a
    move-exception v0

    goto :goto_77

    .line 759
    :catch_8c
    move-exception v0

    goto :goto_69

    .line 757
    :catch_8e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_21
.end method

.method private getLoggingId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 190
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 192
    .local v0, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_a
    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 194
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 197
    .end local v0           #preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :cond_13
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mLoggingId:Ljava/lang/String;

    return-object v1

    .line 194
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

    .line 371
    if-nez p1, :cond_5

    .line 396
    .end local p1
    :goto_4
    return-object p1

    .line 382
    .restart local p1
    :cond_5
    const/16 v2, 0x4000

    .line 383
    .local v2, bufferSize:I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 384
    .local v0, bin:Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 385
    const/16 v5, 0x4000

    .line 386
    .local v5, wanted:I
    const/4 v4, 0x0

    .line 387
    .local v4, totalReceived:I
    new-array v1, v5, [B

    .line 388
    .local v1, buf:[B
    :goto_14
    if-lez v5, :cond_1c

    .line 389
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 390
    .local v3, got:I
    if-gtz v3, :cond_2e

    .line 394
    .end local v3           #got:I
    :cond_1c
    sget-object v6, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object p1, v0

    .line 396
    goto :goto_4

    .line 391
    .restart local v3       #got:I
    :cond_2e
    sub-int/2addr v5, v3

    .line 392
    add-int/2addr v4, v3

    .line 393
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
    .line 464
    .local p1, item:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->validateForUpstreamUpdate()V

    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, entryBytes:[B
    instance-of v4, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v4, :cond_35

    .line 468
    new-instance v3, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v3}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    .line 469
    .local v3, trackMutation:Lcom/google/android/music/sync/google/model/Track;
    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/sync/google/model/Track;->setRemoteId(Ljava/lang/String;)V

    move-object v4, p1

    .line 470
    check-cast v4, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v4}, Lcom/google/android/music/sync/google/model/Track;->getRatingAsInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/sync/google/model/Track;->setRating(I)V

    .line 472
    invoke-interface {p1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getLastModifiedTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/sync/google/model/Track;->setLastModifiedTimestamp(J)V

    .line 473
    invoke-virtual {v3}, Lcom/google/android/music/sync/google/model/Track;->serializeAsJson()[B

    move-result-object v1

    .line 479
    .end local v3           #trackMutation:Lcom/google/android/music/sync/google/model/Track;
    :goto_29
    iget-object v4, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v4}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 481
    .local v0, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v2, Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;

    invoke-direct {v2, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 482
    .local v2, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    return-object v2

    .line 476
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
    .line 174
    iget-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 175
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
    .line 801
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->isValid()Z

    move-result v0

    if-nez v0, :cond_23

    .line 802
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

    .line 805
    :cond_23
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forMagicPlaylist()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    .line 806
    invoke-virtual {p2}, Lcom/google/android/music/sync/google/model/MagicPlaylistRequest;->serializeAsJson()[B

    move-result-object v1

    .line 807
    iget-object v2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 809
    new-instance v2, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    invoke-direct {v2, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 811
    const/4 v1, 0x0

    .line 814
    :try_start_37
    invoke-virtual {v0}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-result-object v0

    .line 816
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 817
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_56
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_37 .. :try_end_44} :catch_4b
    .catch Lcom/google/android/music/sync/api/ResourceNotFoundException; {:try_start_37 .. :try_end_44} :catch_5d
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_37 .. :try_end_44} :catch_68

    move-result-object v0

    .line 830
    if-eqz v1, :cond_4a

    .line 832
    :try_start_47
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_73

    .line 837
    :cond_4a
    :goto_4a
    return-object v0

    .line 818
    :catch_4b
    move-exception v0

    .line 819
    :try_start_4c
    new-instance v2, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v3, "Conflict detected, but this is unexpected for magic playlist creation."

    const/16 v4, 0x199

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_56

    .line 830
    :catchall_56
    move-exception v0

    if-eqz v1, :cond_5c

    .line 832
    :try_start_59
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_75

    .line 834
    :cond_5c
    :goto_5c
    throw v0

    .line 822
    :catch_5d
    move-exception v0

    .line 823
    :try_start_5e
    new-instance v2, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v3, "Resource-not-found detected, but this is unexpected for magic playlist creation."

    const/16 v4, 0x194

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 826
    :catch_68
    move-exception v0

    .line 827
    new-instance v2, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v3, "Not-modified-found detected, but this is unexpected for magic playlist creation."

    const/16 v4, 0x130

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_56

    .line 833
    :catch_73
    move-exception v1

    goto :goto_4a

    :catch_75
    move-exception v1

    goto :goto_5c
.end method

.method public getItems(Landroid/accounts/Account;ILjava/lang/String;JLjava/lang/String;Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClient$GetResult;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    const/4 v2, 0x0

    .line 615
    .line 617
    iget-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_use_downstream_posts"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 619
    if-eqz v0, :cond_96

    .line 620
    new-instance v0, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;-><init>()V

    .line 621
    if-eqz p6, :cond_91

    .line 622
    iput-object p6, v0, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->mStartToken:Ljava/lang/String;

    .line 628
    :goto_19
    iput p2, v0, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->mMaxResults:I

    .line 630
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->serializeAsJson()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 632
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 634
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p7, v1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    .line 651
    :goto_30
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-eqz v3, :cond_3f

    .line 652
    const-string v3, "updated-min"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    :cond_3f
    iget-object v3, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "music_sync_server_options"

    invoke-static {v3, v4, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 657
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 658
    const-string v4, "server-opts"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 663
    :cond_56
    :try_start_56
    invoke-virtual {v1}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    move-result-object v0

    .line 665
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_136
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_56 .. :try_end_60} :catch_13c
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_56 .. :try_end_60} :catch_125

    .line 666
    :try_start_60
    iget-object v4, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mEtag:Ljava/lang/String;

    .line 667
    if-nez v1, :cond_be

    .line 668
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Received an empty entity body in a getEntity request."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_8a
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_60 .. :try_end_6c} :catch_6c
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_60 .. :try_end_6c} :catch_13a

    .line 693
    :catch_6c
    move-exception v0

    .line 694
    :goto_6d
    :try_start_6d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid data on fetch from server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/music/store/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8a
    .catchall {:try_start_6d .. :try_end_8a} :catchall_8a

    .line 699
    :catchall_8a
    move-exception v0

    :goto_8b
    if-eqz v1, :cond_90

    .line 701
    :try_start_8d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_133

    .line 703
    :cond_90
    :goto_90
    throw v0

    .line 626
    :cond_91
    const-string v1, "0"

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/FeedAsPostRequest;->mStartToken:Ljava/lang/String;

    goto :goto_19

    .line 636
    :cond_96
    iget-object v0, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p7, v0}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    .line 637
    new-instance v0, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;

    invoke-direct {v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;-><init>()V

    .line 639
    #setter for: Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;->mEtag:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;->access$002(Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;Ljava/lang/String;)Ljava/lang/String;

    .line 640
    if-eqz p6, :cond_b6

    .line 641
    const-string v3, "start-token"

    invoke-virtual {v1, v3, p6}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 647
    :goto_ab
    const-string v3, "max-results"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_30

    .line 645
    :cond_b6
    const-string v3, "start-token"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/sync/api/MusicUrl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ab

    .line 672
    :cond_be
    :try_start_be
    instance-of v0, p7, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v0, :cond_107

    .line 673
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/TrackFeed;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/TrackFeed;

    move-result-object v0

    move-object v3, v0

    .line 681
    :goto_c7
    if-eqz v3, :cond_140

    .line 682
    invoke-interface {v3}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;->getItemList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11b

    .line 683
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No content in \'data\' field in GET sync response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 688
    :goto_f0
    invoke-interface {v3}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;->getNextPageToken()Ljava/lang/String;

    move-result-object v2

    .line 690
    :goto_f4
    new-instance v3, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;

    if-nez v0, :cond_120

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fe
    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/music/sync/api/MusicApiClient$GetResult;-><init>(Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_be .. :try_end_101} :catchall_8a
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_be .. :try_end_101} :catch_6c
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_be .. :try_end_101} :catch_13a

    .line 699
    if-eqz v1, :cond_106

    .line 701
    :try_start_103
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_131

    .line 703
    :cond_106
    :goto_106
    return-object v3

    .line 674
    :cond_107
    :try_start_107
    instance-of v0, p7, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v0, :cond_111

    .line 675
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistFeed;

    move-result-object v0

    move-object v3, v0

    goto :goto_c7

    .line 676
    :cond_111
    instance-of v0, p7, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v0, :cond_142

    .line 677
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntryFeed;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntryFeed;

    move-result-object v0

    move-object v3, v0

    goto :goto_c7

    .line 686
    :cond_11b
    invoke-interface {v3}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;->getItemList()Ljava/util/List;

    move-result-object v0

    goto :goto_f0

    .line 690
    :cond_120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_123
    .catchall {:try_start_107 .. :try_end_123} :catchall_8a
    .catch Lcom/google/android/music/store/InvalidDataException; {:try_start_107 .. :try_end_123} :catch_6c
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_107 .. :try_end_123} :catch_13a

    move-result-object v0

    goto :goto_fe

    .line 695
    :catch_125
    move-exception v0

    move-object v1, v2

    .line 696
    :goto_127
    :try_start_127
    new-instance v2, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v3, "Conflict detected, but this should not happen for a get."

    const/16 v4, 0x199

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
    :try_end_131
    .catchall {:try_start_127 .. :try_end_131} :catchall_8a

    .line 702
    :catch_131
    move-exception v0

    goto :goto_106

    :catch_133
    move-exception v1

    goto/16 :goto_90

    .line 699
    :catchall_136
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8b

    .line 695
    :catch_13a
    move-exception v0

    goto :goto_127

    .line 693
    :catch_13c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6d

    :cond_140
    move-object v0, v2

    goto :goto_f4

    :cond_142
    move-object v3, v2

    goto :goto_c7
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
    .line 786
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
    .line 728
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
    .line 793
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
    .line 720
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
    .line 779
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
    .line 712
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
    .line 403
    .local p2, item:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;,"TT;"
    if-nez p2, :cond_a

    .line 404
    new-instance v8, Lcom/google/android/music/store/InvalidDataException;

    const-string v9, "Trying to upsync a null entity in a mutation."

    invoke-direct {v8, v9}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 406
    :cond_a
    const/4 v7, 0x0

    .line 408
    .local v7, url:Lcom/google/android/music/sync/api/MusicUrl;
    const/4 v5, 0x0

    .line 409
    .local v5, requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v8, :cond_3c

    .line 410
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->validateForUpstreamInsert()V

    .line 411
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2, v8}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v7

    .line 412
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->serializeAsJson()[B

    move-result-object v2

    .line 413
    .local v2, entryBytes:[B
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v8}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 415
    .local v1, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    new-instance v5, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    .end local v5           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-direct {v5, v1}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 427
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

    .line 432
    .local v6, response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    iget-object v3, v6, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 435
    .local v3, in:Ljava/io/InputStream;
    :try_start_32
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_9f

    if-ne p3, v8, :cond_71

    .line 452
    if-eqz v3, :cond_3b

    .line 454
    :try_start_38
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_a6

    .line 459
    :cond_3b
    :goto_3b
    return-void

    .line 416
    .end local v3           #in:Ljava/io/InputStream;
    .end local v6           #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_3c
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->UPDATE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v8, :cond_4f

    .line 417
    invoke-direct {p0, p2}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->makeUpdateRequestCreator(Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;)Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;

    move-result-object v5

    .line 418
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v7

    goto :goto_28

    .line 419
    :cond_4f
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->DELETE:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v8, :cond_28

    .line 420
    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->validateForUpstreamDelete()V

    .line 421
    iget-object v8, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {p2}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v7

    .line 422
    new-instance v5, Lcom/google/android/music/sync/api/MusicApiClientImpl$DeleteRequestCreator;

    .end local v5           #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    invoke-direct {v5}, Lcom/google/android/music/sync/api/MusicApiClientImpl$DeleteRequestCreator;-><init>()V

    .restart local v5       #requestCreator:Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;
    goto :goto_28

    .line 428
    :catch_66
    move-exception v0

    .line 429
    .local v0, e:Lcom/google/android/music/sync/api/NotModifiedException;
    new-instance v8, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v9, "Unexpected not-modified status returned on a mutation"

    const/16 v10, 0x130

    invoke-direct {v8, v9, v0, v10}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v8

    .line 440
    .end local v0           #e:Lcom/google/android/music/sync/api/NotModifiedException;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #response:Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :cond_71
    const/4 v4, 0x0

    .line 441
    .local v4, mutatedEntity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :try_start_72
    instance-of v8, p2, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v8, :cond_8d

    .line 442
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/Track;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/Track;

    move-result-object v4

    .line 448
    :cond_7a
    :goto_7a
    sget-object v8, Lcom/google/android/music/sync/api/MusicApiClient$OpType;->INSERT:Lcom/google/android/music/sync/api/MusicApiClient$OpType;

    if-ne p3, v8, :cond_85

    .line 449
    invoke-interface {v4}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getRemoteId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->setRemoteId(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_72 .. :try_end_85} :catchall_9f

    .line 452
    :cond_85
    if-eqz v3, :cond_3b

    .line 454
    :try_start_87
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_3b

    .line 455
    :catch_8b
    move-exception v8

    goto :goto_3b

    .line 443
    :cond_8d
    :try_start_8d
    instance-of v8, p2, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v8, :cond_96

    .line 444
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v4

    goto :goto_7a

    .line 445
    :cond_96
    instance-of v8, p2, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v8, :cond_7a

    .line 446
    invoke-static {v3}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;
    :try_end_9d
    .catchall {:try_start_8d .. :try_end_9d} :catchall_9f

    move-result-object v4

    goto :goto_7a

    .line 452
    .end local v4           #mutatedEntity:Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;
    :catchall_9f
    move-exception v8

    if-eqz v3, :cond_a5

    .line 454
    :try_start_a2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a8

    .line 456
    :cond_a5
    :goto_a5
    throw v8

    .line 455
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
    .line 490
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    :cond_b
    :goto_b
    return-object v0

    .line 494
    :cond_c
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 495
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;->getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    .line 499
    instance-of v2, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v2, :cond_8e

    .line 500
    new-instance v2, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;

    invoke-direct {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;-><init>()V

    .line 501
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 502
    const-class v4, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    .line 503
    new-instance v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;

    invoke-direct {v4}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;-><init>()V

    .line 504
    iget-boolean v5, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    if-eqz v5, :cond_4e

    .line 505
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->validateForUpstreamDelete()V

    .line 506
    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;->mDeletePlaylistRemoteId:Ljava/lang/String;

    .line 514
    :goto_4a
    invoke-virtual {v2, v4}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;->addRequest(Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;)V

    goto :goto_26

    .line 507
    :cond_4e
    iget-object v5, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    if-eqz v5, :cond_58

    .line 508
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->validateForUpstreamUpdate()V

    .line 509
    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;->mUpdatePlaylist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    goto :goto_4a

    .line 511
    :cond_58
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->validateForUpstreamInsert()V

    .line 512
    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest$MutatePlaylistRequest;->mCreatePlaylist:Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    goto :goto_4a

    .line 516
    :cond_5e
    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistRequest;->serializeAsJson()[B

    move-result-object v0

    .line 573
    :goto_62
    iget-object v2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 574
    new-instance v2, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    invoke-direct {v2, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 577
    :try_start_6d
    invoke-virtual {v1}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;
    :try_end_74
    .catch Lcom/google/android/music/sync/api/NotModifiedException; {:try_start_6d .. :try_end_74} :catch_1a8
    .catch Lcom/google/android/music/sync/api/ConflictException; {:try_start_6d .. :try_end_74} :catch_1b3

    move-result-object v0

    .line 587
    iget-object v1, v0, Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;->mInputStream:Ljava/io/InputStream;

    .line 589
    :try_start_77
    invoke-static {v1}, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/BatchMutateResponse;

    move-result-object v0

    .line 591
    iget-object v2, v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;

    if-nez v2, :cond_1be

    .line 592
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Received empty data in batch mutate response."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_87

    .line 600
    :catchall_87
    move-exception v0

    if-eqz v1, :cond_8d

    .line 602
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_1de

    .line 604
    :cond_8d
    :goto_8d
    throw v0

    .line 517
    :cond_8e
    instance-of v2, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v2, :cond_eb

    .line 518
    new-instance v2, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;

    invoke-direct {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;-><init>()V

    .line 519
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 520
    const-class v4, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    .line 521
    new-instance v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;

    invoke-direct {v4}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;-><init>()V

    .line 522
    iget-boolean v5, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mIsDeleted:Z

    if-eqz v5, :cond_c3

    .line 523
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->validateForUpstreamDelete()V

    .line 524
    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;->mDeletePlaylistEntryRemoteId:Ljava/lang/String;

    .line 532
    :goto_bf
    invoke-virtual {v2, v4}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;->addRequest(Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;)V

    goto :goto_9b

    .line 525
    :cond_c3
    iget-object v5, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    if-eqz v5, :cond_cd

    .line 526
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->validateForUpstreamUpdate()V

    .line 527
    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;->mUpdatePlaylistEntry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    goto :goto_bf

    .line 529
    :cond_cd
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->validateForUpstreamInsert()V

    .line 530
    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest$MutatePlaylistEntryRequest;->mCreatePlaylistEntry:Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    goto :goto_bf

    .line 534
    :cond_d3
    sget-boolean v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v0, :cond_e5

    .line 535
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;->serializeAsJson()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_e5
    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutatePlaylistEntryRequest;->serializeAsJson()[B

    move-result-object v0

    goto/16 :goto_62

    .line 538
    :cond_eb
    instance-of v2, v0, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v2, :cond_152

    .line 539
    new-instance v2, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;

    invoke-direct {v2}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;-><init>()V

    .line 540
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 541
    const-class v4, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;

    .line 542
    new-instance v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;

    invoke-direct {v4}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;-><init>()V

    .line 543
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/Track;->validateForUpstreamUpdate()V

    .line 545
    new-instance v5, Lcom/google/android/music/sync/google/model/Track;

    invoke-direct {v5}, Lcom/google/android/music/sync/google/model/Track;-><init>()V

    iput-object v5, v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;->mUpdateTrack:Lcom/google/android/music/sync/google/model/Track;

    .line 546
    iget-object v5, v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;->mUpdateTrack:Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/Track;->getRemoteId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/sync/google/model/Track;->setRemoteId(Ljava/lang/String;)V

    .line 547
    iget-object v5, v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;->mUpdateTrack:Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/Track;->getRatingAsInt()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/music/sync/google/model/Track;->setRating(I)V

    .line 549
    iget-object v5, v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;->mUpdateTrack:Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/Track;->getLastModifiedTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/sync/google/model/Track;->setLastModifiedTimestamp(J)V

    .line 552
    invoke-virtual {v2, v4}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->addRequest(Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;)V

    goto :goto_f8

    .line 554
    :cond_13a
    sget-boolean v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->LOGV:Z

    if-eqz v0, :cond_14c

    .line 555
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->serializeAsJson()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_14c
    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->serializeAsJson()[B

    move-result-object v0

    goto/16 :goto_62

    .line 558
    :cond_152
    instance-of v0, v0, Lcom/google/android/music/sync/google/model/TrackTombstone;

    if-eqz v0, :cond_199

    .line 559
    new-instance v2, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;

    invoke-direct {v2}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;-><init>()V

    .line 560
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_185

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;

    .line 561
    const-class v4, Lcom/google/android/music/sync/google/model/TrackTombstone;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/TrackTombstone;

    .line 562
    new-instance v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;

    invoke-direct {v4}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;-><init>()V

    .line 563
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/TrackTombstone;->validateForUpstreamDelete()V

    .line 564
    invoke-virtual {v0}, Lcom/google/android/music/sync/google/model/TrackTombstone;->getRemoteId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;->mDeleteTrackRemoteId:Ljava/lang/String;

    .line 565
    invoke-virtual {v2, v4}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->addRequest(Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;)V

    goto :goto_15f

    .line 567
    :cond_185
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->serializeAsJson()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->serializeAsJson()[B

    move-result-object v0

    goto/16 :goto_62

    .line 570
    :cond_199
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "Unrecognized item type in a batch mutate."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Unrecognized item type in a batch mutate."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :catch_1a8
    move-exception v0

    .line 579
    new-instance v1, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v2, "Unexpected not-modified status returned on a batched mutation"

    const/16 v3, 0x130

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 582
    :catch_1b3
    move-exception v0

    .line 583
    new-instance v1, Lcom/google/android/music/sync/common/SyncHttpException;

    const-string v2, "Unexpected conflict status returned on a batched mutation"

    const/16 v3, 0x199

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/music/sync/common/SyncHttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 594
    :cond_1be
    :try_start_1be
    iget-object v2, v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1d2

    .line 595
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Mismatch between number of entries in request and response"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1d2
    iget-object v0, v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;
    :try_end_1d4
    .catchall {:try_start_1be .. :try_end_1d4} :catchall_87

    .line 600
    if-eqz v1, :cond_b

    .line 602
    :try_start_1d6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d9
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1d9} :catch_1db

    goto/16 :goto_b

    .line 603
    :catch_1db
    move-exception v1

    goto/16 :goto_b

    :catch_1de
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
    .line 844
    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 845
    :cond_8
    sget-object v0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "Track stats list is null or empty. Skip reporting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :goto_f
    return-void

    .line 849
    :cond_10
    const-class v0, Lcom/google/android/music/sync/google/model/TrackStat;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/TrackStat;

    .line 850
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/sync/google/model/TrackStat;->getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    .line 853
    new-instance v2, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;

    invoke-direct {v2}, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;-><init>()V

    .line 854
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 855
    const-class v4, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-virtual {v2, v0}, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;->addTrackStat(Lcom/google/android/music/sync/google/model/TrackStat;)V

    goto :goto_2c

    .line 857
    :cond_44
    invoke-virtual {v2}, Lcom/google/android/music/sync/google/model/BatchReportTrackStats;->serializeAsJson()[B

    move-result-object v0

    .line 859
    iget-object v2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 860
    new-instance v2, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;

    invoke-direct {v2, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl$PostRequestCreator;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 861
    invoke-virtual {v1}, Lcom/google/android/music/sync/api/MusicUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0}, Lcom/google/android/music/sync/api/MusicApiClientImpl;->createAndExecuteMethod(Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicApiClientImpl$MethodExecutionResult;

    goto :goto_f
.end method
