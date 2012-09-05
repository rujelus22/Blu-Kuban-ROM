.class public Lcom/google/android/music/sync/api/SignupClient;
.super Ljava/lang/Object;
.source "SignupClient.java"


# instance fields
.field private final mAndroidId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHoldoffDuration:J

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private final mLoggingId:Ljava/lang/String;

.field private final mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/music/sync/api/SignupClient;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 57
    .local v0, preferences:Lcom/google/android/music/jumper/MusicPreferences;
    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/sync/api/SignupClient;->mLoggingId:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_52

    .line 59
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/sync/api/SignupClient;->mAndroidId:Ljava/lang/String;

    .line 65
    new-instance v1, Lcom/google/android/music/sync/google/MusicAuthInfo;

    iget-object v2, p0, Lcom/google/android/music/sync/api/SignupClient;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/music/sync/api/SignupClient;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    .line 68
    new-instance v1, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v2, p0, Lcom/google/android/music/sync/api/SignupClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/sync/api/SignupClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/music/sync/api/SignupClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 70
    iget-object v2, p0, Lcom/google/android/music/sync/api/SignupClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v3, "MusicStreaming"

    sget-boolean v1, Lcom/google/android/music/DebugUtils;->AUTO_LOG_ALL:Z

    if-eqz v1, :cond_57

    const/4 v1, 0x3

    :goto_4a
    invoke-virtual {v2, v3, v1}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 72
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J

    .line 73
    return-void

    .line 59
    :catchall_52
    move-exception v1

    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    throw v1

    .line 70
    :cond_57
    const/4 v1, 0x2

    goto :goto_4a
.end method


# virtual methods
.method public checkInviteStatus(Landroid/accounts/Account;)I
    .registers 18
    .parameter "account"

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 85
    .local v2, closeAfterDone:Ljava/io/Closeable;
    const/4 v8, 0x0

    .line 86
    .local v8, response:Lorg/apache/http/HttpResponse;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/sync/api/SignupClient;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, authToken:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v12, "https://android.clients.google.com/music/signupstatus"

    invoke-direct {v4, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 88
    .local v4, get:Lorg/apache/http/client/methods/HttpGet;
    const-string v12, "Authorization"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GoogleLogin auth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v12, "X-Device-Logging-ID"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/sync/api/SignupClient;->mLoggingId:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v12, "X-Device-ID"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/music/sync/api/SignupClient;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/sync/api/SignupClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v12, v4}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 92
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 93
    .local v11, status:I
    const/16 v12, 0xc8

    if-lt v11, v12, :cond_7b

    const/16 v12, 0x12c

    if-ge v11, v12, :cond_7b

    .line 95
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    .local v7, reader:Ljava/io/BufferedReader;
    move-object v2, v7

    .line 98
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, line:Ljava/lang/String;
    const-string v12, "yes"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_71
    .catchall {:try_start_2 .. :try_end_71} :catchall_1a0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_71} :catch_104
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_71} :catch_18b

    move-result v12

    if-eqz v12, :cond_183

    .line 100
    const/4 v12, 0x1

    .line 139
    if-eqz v2, :cond_7a

    .line 141
    :try_start_77
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_1a7

    .line 146
    .end local v1           #authToken:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v11           #status:I
    :cond_7a
    :goto_7a
    return v12

    .line 102
    .restart local v1       #authToken:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #status:I
    :cond_7b
    const/16 v12, 0x191

    if-ne v11, v12, :cond_98

    .line 103
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/sync/api/SignupClient;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Lcom/google/android/music/sync/google/MusicAuthInfo;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 104
    const-string v12, "MusicStreaming"

    const-string v13, "Unable to download stream due to invalid auth token."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_1a0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_7f .. :try_end_8f} :catch_104
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_8f} :catch_18b

    .line 105
    const/4 v12, -0x1

    .line 139
    if-eqz v2, :cond_7a

    .line 141
    :try_start_92
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_7a

    .line 142
    :catch_96
    move-exception v13

    goto :goto_7a

    .line 106
    :cond_98
    const/16 v12, 0x1f7

    if-ne v11, v12, :cond_14e

    .line 109
    :try_start_9c
    const-string v12, "Retry-After"

    invoke-interface {v8, v12}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v5

    .line 110
    .local v5, headers:[Lorg/apache/http/Header;
    array-length v12, v5
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_1a0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_9c .. :try_end_a3} :catch_104
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a3} :catch_18b

    if-lez v12, :cond_119

    .line 112
    const/4 v12, 0x0

    :try_start_a6
    aget-object v12, v5, v12

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 113
    .local v9, retryAfter:J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J

    cmp-long v12, v9, v12

    if-ltz v12, :cond_c2

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_c6

    .line 114
    :cond_c2
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J
    :try_end_c6
    .catchall {:try_start_a6 .. :try_end_c6} :catchall_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_c6} :catch_f9
    .catch Landroid/accounts/AuthenticatorException; {:try_start_a6 .. :try_end_c6} :catch_104
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_c6} :catch_18b

    .line 119
    .end local v9           #retryAfter:J
    :cond_c6
    :goto_c6
    :try_start_c6
    const-string v12, "MusicStreaming"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Server requested we back off: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catchall {:try_start_c6 .. :try_end_f0} :catchall_1a0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_c6 .. :try_end_f0} :catch_104
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_f0} :catch_18b

    .line 121
    const/4 v12, -0x2

    .line 139
    if-eqz v2, :cond_7a

    .line 141
    :try_start_f3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f7

    goto :goto_7a

    .line 142
    :catch_f7
    move-exception v13

    goto :goto_7a

    .line 116
    :catch_f9
    move-exception v3

    .line 117
    .local v3, e:Ljava/lang/NumberFormatException;
    :try_start_fa
    const-string v12, "MusicStreaming"

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_1a0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_fa .. :try_end_103} :catch_104
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_103} :catch_18b

    goto :goto_c6

    .line 132
    .end local v1           #authToken:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #headers:[Lorg/apache/http/Header;
    .end local v11           #status:I
    :catch_104
    move-exception v3

    .line 133
    .local v3, e:Landroid/accounts/AuthenticatorException;
    :try_start_105
    const-string v12, "MusicStreaming"

    invoke-virtual {v3}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10e
    .catchall {:try_start_105 .. :try_end_10e} :catchall_1a0

    .line 134
    const/4 v12, -0x1

    .line 139
    if-eqz v2, :cond_7a

    .line 141
    :try_start_111
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_116

    goto/16 :goto_7a

    .line 142
    :catch_116
    move-exception v13

    goto/16 :goto_7a

    .line 124
    .end local v3           #e:Landroid/accounts/AuthenticatorException;
    .restart local v1       #authToken:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #headers:[Lorg/apache/http/Header;
    .restart local v11       #status:I
    :cond_119
    :try_start_119
    const-string v12, "MusicStreaming"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Server returned illegal response (and no Retry-After): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catchall {:try_start_119 .. :try_end_143} :catchall_1a0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_119 .. :try_end_143} :catch_104
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_143} :catch_18b

    .line 126
    const/4 v12, -0x1

    .line 139
    if-eqz v2, :cond_7a

    .line 141
    :try_start_146
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_14b

    goto/16 :goto_7a

    .line 142
    :catch_14b
    move-exception v13

    goto/16 :goto_7a

    .line 128
    .end local v5           #headers:[Lorg/apache/http/Header;
    :cond_14e
    :try_start_14e
    const-string v12, "MusicStreaming"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Server returned illegal response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_178
    .catchall {:try_start_14e .. :try_end_178} :catchall_1a0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_14e .. :try_end_178} :catch_104
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_178} :catch_18b

    .line 130
    const/4 v12, -0x1

    .line 139
    if-eqz v2, :cond_7a

    .line 141
    :try_start_17b
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_17e} :catch_180

    goto/16 :goto_7a

    .line 142
    :catch_180
    move-exception v13

    goto/16 :goto_7a

    .line 139
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_183
    if-eqz v2, :cond_188

    .line 141
    :try_start_185
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_1aa

    .line 146
    :cond_188
    :goto_188
    const/4 v12, 0x0

    goto/16 :goto_7a

    .line 135
    .end local v1           #authToken:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v11           #status:I
    :catch_18b
    move-exception v3

    .line 136
    .local v3, e:Ljava/io/IOException;
    :try_start_18c
    const-string v12, "MusicStreaming"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_195
    .catchall {:try_start_18c .. :try_end_195} :catchall_1a0

    .line 137
    const/4 v12, -0x1

    .line 139
    if-eqz v2, :cond_7a

    .line 141
    :try_start_198
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_19d

    goto/16 :goto_7a

    .line 142
    :catch_19d
    move-exception v13

    goto/16 :goto_7a

    .line 139
    .end local v3           #e:Ljava/io/IOException;
    :catchall_1a0
    move-exception v12

    if-eqz v2, :cond_1a6

    .line 141
    :try_start_1a3
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1a6} :catch_1ac

    .line 143
    :cond_1a6
    :goto_1a6
    throw v12

    .line 142
    .restart local v1       #authToken:Ljava/lang/String;
    .restart local v4       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    .restart local v11       #status:I
    :catch_1a7
    move-exception v13

    goto/16 :goto_7a

    :catch_1aa
    move-exception v12

    goto :goto_188

    .end local v1           #authToken:Ljava/lang/String;
    .end local v4           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .end local v11           #status:I
    :catch_1ac
    move-exception v13

    goto :goto_1a6
.end method

.method public close()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 155
    return-void
.end method

.method public getHoldoffDurationSecs()J
    .registers 3

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/google/android/music/sync/api/SignupClient;->mHoldoffDuration:J

    return-wide v0
.end method
