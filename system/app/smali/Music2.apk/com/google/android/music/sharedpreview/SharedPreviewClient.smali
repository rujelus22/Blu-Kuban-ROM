.class public Lcom/google/android/music/sharedpreview/SharedPreviewClient;
.super Ljava/lang/Object;
.source "SharedPreviewClient.java"


# static fields
.field private static final LOG_HTTP:Z


# instance fields
.field private final LOGV:Z

.field private final mAndroidId:Ljava/lang/String;

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private final mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mOwnHttpClient:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    const-string v0, "SharedPreviewClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->LOG_HTTP:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/common/http/GoogleHttpClient;)V
    .registers 7
    .parameter "context"
    .parameter "httpClient"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "SharedPreviewClient"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->LOGV:Z

    .line 51
    if-nez p2, :cond_48

    .line 52
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    invoke-static {p1}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mOwnHttpClient:Z

    .line 58
    :goto_1c
    iget-object v1, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v2, "SharedPreviewClient"

    sget-boolean v0, Lcom/google/android/music/DebugUtils;->AUTO_LOG_ALL:Z

    if-eqz v0, :cond_4d

    const/4 v0, 0x3

    :goto_25
    invoke-virtual {v1, v2, v0}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 60
    new-instance v0, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-direct {v0, p1}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    .line 62
    invoke-static {p1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mAndroidId:Ljava/lang/String;

    .line 65
    return-void

    .line 55
    :cond_48
    iput-object p2, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 56
    iput-boolean v2, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mOwnHttpClient:Z

    goto :goto_1c

    .line 58
    :cond_4d
    const/4 v0, 0x2

    goto :goto_25
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mOwnHttpClient:Z

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 74
    :cond_9
    return-void
.end method

.method public getMetaDataResponse(Ljava/lang/String;)Lcom/google/android/music/sharedpreview/JsonResponse;
    .registers 3
    .parameter "url"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->getResponse(Ljava/lang/String;Z)Lcom/google/android/music/sharedpreview/JsonResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewResponse(Ljava/lang/String;)Lcom/google/android/music/sharedpreview/PreviewResponse;
    .registers 6
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 82
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->getResponse(Ljava/lang/String;Z)Lcom/google/android/music/sharedpreview/JsonResponse;

    move-result-object v1

    .line 83
    .local v1, res:Lcom/google/android/music/sharedpreview/JsonResponse;
    if-nez v1, :cond_10

    .line 84
    const-string v2, "SharedPreviewClient"

    const-string v3, "Failed to gret preview response"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_f
    return-object v0

    .line 87
    :cond_10
    instance-of v2, v1, Lcom/google/android/music/sharedpreview/PreviewResponse;

    if-nez v2, :cond_1c

    .line 88
    const-string v2, "SharedPreviewClient"

    const-string v3, "Received wrong response"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_1c
    move-object v0, v1

    .line 91
    check-cast v0, Lcom/google/android/music/sharedpreview/PreviewResponse;

    .line 93
    .local v0, preview:Lcom/google/android/music/sharedpreview/PreviewResponse;
    goto :goto_f
.end method

.method public getResponse(Ljava/lang/String;Z)Lcom/google/android/music/sharedpreview/JsonResponse;
    .registers 24
    .parameter "url"
    .parameter "isStreaming"

    .prologue
    .line 111
    const/16 v16, 0x0

    .line 112
    .local v16, response:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 113
    .local v2, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v15

    .line 116
    .local v15, loggingId:Ljava/lang/String;
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, authToken:Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "&o=json&u=0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 118
    .local v8, get:Lorg/apache/http/client/methods/HttpGet;
    const-string v18, "Authorization"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GoogleLogin auth="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v18, "X-Device-Logging-ID"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v15}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v18, "X-Device-ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mAndroidId:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 123
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 124
    .local v17, status:I
    const/4 v13, 0x0

    .line 126
    .local v13, jsonResponse:Lcom/google/android/music/sharedpreview/JsonResponse;
    sget-boolean v18, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->LOG_HTTP:Z

    if-eqz v18, :cond_c4

    .line 127
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .local v3, arr$:[Lorg/apache/http/Header;
    array-length v14, v3

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_93
    if-ge v10, v14, :cond_c4

    aget-object v9, v3, v10

    .line 128
    .local v9, header:Lorg/apache/http/Header;
    const-string v18, "SharedPreviewClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Response header: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v9}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    add-int/lit8 v10, v10, 0x1

    goto :goto_93

    .line 132
    .end local v3           #arr$:[Lorg/apache/http/Header;
    .end local v9           #header:Lorg/apache/http/Header;
    .end local v10           #i$:I
    .end local v14           #len$:I
    :cond_c4
    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_18a

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_18a

    .line 133
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->LOGV:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e3

    .line 134
    const-string v18, "SharedPreviewClient"

    const-string v19, "SUCCESS"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_e3
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 137
    .local v7, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_ea
    .catch Landroid/accounts/AuthenticatorException; {:try_start_16 .. :try_end_ea} :catch_17c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_ea} :catch_1af

    move-result-object v11

    .line 140
    .local v11, inputStream:Ljava/io/InputStream;
    if-eqz p2, :cond_117

    .line 141
    :try_start_ed
    invoke-static {v11}, Lcom/google/android/music/sharedpreview/PreviewResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sharedpreview/PreviewResponse;

    move-result-object v13

    .line 173
    :goto_f1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->LOGV:Z

    move/from16 v18, v0

    if-eqz v18, :cond_113

    .line 174
    const-string v18, "SharedPreviewClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "jsonResponse="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catchall {:try_start_ed .. :try_end_113} :catchall_177

    .line 177
    :cond_113
    :try_start_113
    invoke-static {v11}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_116
    .catch Landroid/accounts/AuthenticatorException; {:try_start_113 .. :try_end_116} :catch_17c
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_1af

    .line 191
    .end local v4           #authToken:Ljava/lang/String;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #inputStream:Ljava/io/InputStream;
    .end local v13           #jsonResponse:Lcom/google/android/music/sharedpreview/JsonResponse;
    .end local v17           #status:I
    :goto_116
    return-object v13

    .line 144
    .restart local v4       #authToken:Ljava/lang/String;
    .restart local v7       #entity:Lorg/apache/http/HttpEntity;
    .restart local v8       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #inputStream:Ljava/io/InputStream;
    .restart local v13       #jsonResponse:Lcom/google/android/music/sharedpreview/JsonResponse;
    .restart local v17       #status:I
    :cond_117
    :try_start_117
    invoke-static {v11}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 146
    .local v5, byteResponse:[B
    sget-boolean v18, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->LOG_HTTP:Z

    if-eqz v18, :cond_13e

    .line 147
    const-string v18, "SharedPreviewClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Response: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_13e
    invoke-static {v11}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    const/4 v11, 0x0

    .line 155
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_147
    .catchall {:try_start_117 .. :try_end_147} :catchall_177

    .line 156
    .end local v11           #inputStream:Ljava/io/InputStream;
    .local v12, inputStream:Ljava/io/InputStream;
    :try_start_147
    invoke-static {v12}, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sharedpreview/SharedAlbumResponse;

    move-result-object v13

    .line 160
    move-object v0, v13

    check-cast v0, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/music/sharedpreview/SharedAlbumResponse;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_1dc

    .line 161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->LOGV:Z

    move/from16 v18, v0

    if-eqz v18, :cond_167

    .line 162
    const-string v18, "SharedPreviewClient"

    const-string v19, "Try to parse as shared song"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_167
    invoke-static {v12}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_16a
    .catchall {:try_start_147 .. :try_end_16a} :catchall_1d9

    .line 166
    const/4 v11, 0x0

    .line 169
    .end local v12           #inputStream:Ljava/io/InputStream;
    .restart local v11       #inputStream:Ljava/io/InputStream;
    :try_start_16b
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_170
    .catchall {:try_start_16b .. :try_end_170} :catchall_177

    .line 170
    .end local v11           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    :try_start_170
    invoke-static {v12}, Lcom/google/android/music/sharedpreview/SharedSongResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sharedpreview/SharedSongResponse;
    :try_end_173
    .catchall {:try_start_170 .. :try_end_173} :catchall_1d9

    move-result-object v13

    move-object v11, v12

    .end local v12           #inputStream:Ljava/io/InputStream;
    .restart local v11       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_f1

    .line 177
    .end local v5           #byteResponse:[B
    :catchall_177
    move-exception v18

    :goto_178
    :try_start_178
    invoke-static {v11}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v18
    :try_end_17c
    .catch Landroid/accounts/AuthenticatorException; {:try_start_178 .. :try_end_17c} :catch_17c
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_17c} :catch_1af

    .line 186
    .end local v4           #authToken:Ljava/lang/String;
    .end local v7           #entity:Lorg/apache/http/HttpEntity;
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #inputStream:Ljava/io/InputStream;
    .end local v13           #jsonResponse:Lcom/google/android/music/sharedpreview/JsonResponse;
    .end local v17           #status:I
    :catch_17c
    move-exception v6

    .line 187
    .local v6, e:Landroid/accounts/AuthenticatorException;
    const-string v18, "SharedPreviewClient"

    const-string v19, "Exception: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v6           #e:Landroid/accounts/AuthenticatorException;
    :goto_188
    const/4 v13, 0x0

    goto :goto_116

    .line 181
    .restart local v4       #authToken:Ljava/lang/String;
    .restart local v8       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #jsonResponse:Lcom/google/android/music/sharedpreview/JsonResponse;
    .restart local v17       #status:I
    :cond_18a
    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1bc

    .line 182
    :try_start_192
    const-string v18, "SharedPreviewClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ae
    .catch Landroid/accounts/AuthenticatorException; {:try_start_192 .. :try_end_1ae} :catch_17c
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_1ae} :catch_1af

    goto :goto_188

    .line 188
    .end local v4           #authToken:Ljava/lang/String;
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #jsonResponse:Lcom/google/android/music/sharedpreview/JsonResponse;
    .end local v17           #status:I
    :catch_1af
    move-exception v6

    .line 189
    .local v6, e:Ljava/io/IOException;
    const-string v18, "SharedPreviewClient"

    const-string v19, "Exception: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_188

    .line 184
    .end local v6           #e:Ljava/io/IOException;
    .restart local v4       #authToken:Ljava/lang/String;
    .restart local v8       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #jsonResponse:Lcom/google/android/music/sharedpreview/JsonResponse;
    .restart local v17       #status:I
    :cond_1bc
    :try_start_1bc
    const-string v18, "SharedPreviewClient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d8
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1bc .. :try_end_1d8} :catch_17c
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1d8} :catch_1af

    goto :goto_188

    .line 177
    .restart local v5       #byteResponse:[B
    .restart local v7       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    :catchall_1d9
    move-exception v18

    move-object v11, v12

    .end local v12           #inputStream:Ljava/io/InputStream;
    .restart local v11       #inputStream:Ljava/io/InputStream;
    goto :goto_178

    .end local v11           #inputStream:Ljava/io/InputStream;
    .restart local v12       #inputStream:Ljava/io/InputStream;
    :cond_1dc
    move-object v11, v12

    .end local v12           #inputStream:Ljava/io/InputStream;
    .restart local v11       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_f1
.end method
