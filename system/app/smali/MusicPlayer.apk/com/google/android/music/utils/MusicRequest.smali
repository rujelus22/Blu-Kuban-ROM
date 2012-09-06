.class public Lcom/google/android/music/utils/MusicRequest;
.super Ljava/lang/Object;
.source "MusicRequest.java"


# static fields
.field private static final LOGV:Z

.field private static final LOG_HEADERS:Z

.field private static mSharedClient:Lcom/google/android/common/http/GoogleHttpClient;


# instance fields
.field private final mAndroidId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

.field protected final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mPassthroughCookies:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    const-string v0, "MusicStreaming"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/utils/MusicRequest;->LOG_HEADERS:Z

    .line 60
    const-string v0, "MusicStreaming"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/utils/MusicRequest;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 12
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    iput-object v5, p0, Lcom/google/android/music/utils/MusicRequest;->mPassthroughCookies:Ljava/util/TreeSet;

    .line 98
    iput-object p2, p0, Lcom/google/android/music/utils/MusicRequest;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 99
    iput-object p1, p0, Lcom/google/android/music/utils/MusicRequest;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/utils/MusicRequest;->mAndroidId:Ljava/lang/String;

    .line 102
    new-instance v5, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-direct {v5, p1}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/music/utils/MusicRequest;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "music_download_passthrough_cookies"

    const-string v7, "sjsc"

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, passthroughCookies:Ljava/lang/String;
    if-eqz v4, :cond_53

    .line 108
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_41
    if-ge v1, v3, :cond_53

    aget-object v2, v0, v1

    .line 109
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_50

    .line 110
    iget-object v5, p0, Lcom/google/android/music/utils/MusicRequest;->mPassthroughCookies:Ljava/util/TreeSet;

    invoke-virtual {v5, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 114
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #len$:I
    :cond_53
    return-void
.end method

.method private static createHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;
    .registers 4
    .parameter "context"

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    invoke-static {p0}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 90
    .local v0, client:Lcom/google/android/common/http/GoogleHttpClient;
    const-string v2, "MusicStreaming"

    invoke-static {}, Lcom/google/android/music/DebugUtils;->isAutoLogAll()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x3

    :goto_13
    invoke-virtual {v0, v2, v1}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 94
    return-object v0

    .line 90
    :cond_17
    const/4 v1, 0x2

    goto :goto_13
.end method

.method public static declared-synchronized getSharedHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;
    .registers 3
    .parameter "context"

    .prologue
    .line 76
    const-class v1, Lcom/google/android/music/utils/MusicRequest;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/music/utils/MusicRequest;->mSharedClient:Lcom/google/android/common/http/GoogleHttpClient;

    if-nez v0, :cond_d

    .line 77
    invoke-static {p0}, Lcom/google/android/music/utils/MusicRequest;->createHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/utils/MusicRequest;->mSharedClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 79
    :cond_d
    sget-object v0, Lcom/google/android/music/utils/MusicRequest;->mSharedClient:Lcom/google/android/common/http/GoogleHttpClient;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected getAuthAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/music/utils/MusicRequest;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected getAuthToken()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/http/client/HttpResponseException;
        }
    .end annotation

    .prologue
    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/utils/MusicRequest;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-virtual {p0}, Lcom/google/android/music/utils/MusicRequest;->getAuthAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    return-object v2

    .line 319
    :catch_b
    move-exception v0

    .line 320
    .local v0, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/accounts/OperationCanceledException;

    if-eqz v2, :cond_24

    .line 321
    const-string v2, "MusicStreaming"

    const-string v3, "Getting auth token canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .line 323
    .local v1, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v1, v0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 324
    throw v1

    .line 326
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_24
    const-string v2, "MusicStreaming"

    const-string v3, "Failed to get auth token"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    const/16 v3, 0x191

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain auth token for music streaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method protected onBeforeExecute(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 333
    return-void
.end method

.method public sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/google/android/common/http/GoogleHttpClient;)Lorg/apache/http/HttpResponse;
    .registers 41
    .parameter "request"
    .parameter "httpClient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/MusicRequest;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v18

    .line 127
    .local v18, loggingId:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/utils/MusicRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, authToken:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/utils/MusicRequest;->getAuthAccount()Landroid/accounts/Account;

    move-result-object v4

    .line 130
    .local v4, account:Landroid/accounts/Account;
    const/16 v28, 0x0

    .line 131
    .local v28, response:Lorg/apache/http/HttpResponse;
    const/16 v33, 0x1f4

    .line 132
    .local v33, status:I
    const/16 v23, 0x0

    .line 133
    .local v23, redirectCount:I
    const/16 v31, 0x1

    .line 135
    .local v31, retryAuthFailure:Z
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 136
    .local v10, cookies:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    .line 137
    .local v11, currentThread:Ljava/lang/Thread;
    :cond_23
    :goto_23
    const/16 v35, 0xa

    move/from16 v0, v23

    move/from16 v1, v35

    if-ge v0, v1, :cond_182

    .line 138
    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v35

    if-eqz v35, :cond_37

    .line 139
    new-instance v35, Ljava/lang/InterruptedException;

    invoke-direct/range {v35 .. v35}, Ljava/lang/InterruptedException;-><init>()V

    throw v35

    .line 142
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v22

    .line 143
    .local v22, params:Lorg/apache/http/params/HttpParams;
    const/16 v35, 0x2ee0

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 144
    const/16 v35, 0x2710

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 145
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 147
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_62

    .line 148
    new-instance v35, Ljava/io/IOException;

    const-string v36, "No auth token available."

    invoke-direct/range {v35 .. v36}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 150
    :cond_62
    if-nez v23, :cond_e0

    .line 154
    const-string v35, "Authorization"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "GoogleLogin auth="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_84
    const-string v35, "X-Device-ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/MusicRequest;->mAndroidId:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v35, "X-Device-Logging-ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/music/utils/MusicRequest;->onBeforeExecute(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 165
    sget-boolean v35, Lcom/google/android/music/utils/MusicRequest;->LOGV:Z

    if-eqz v35, :cond_c3

    .line 166
    const-string v35, "MusicStreaming"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Requesting URL: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_c3
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v28

    .line 169
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v34

    .line 170
    .local v34, statusLine:Lorg/apache/http/StatusLine;
    if-nez v34, :cond_100

    .line 171
    const-string v35, "MusicStreaming"

    const-string v36, "Stream-download response status line is null."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v35, Ljava/io/IOException;

    const-string v36, "StatusLine is null -- should not happen."

    invoke-direct/range {v35 .. v36}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 155
    .end local v34           #statusLine:Lorg/apache/http/StatusLine;
    :cond_e0
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v35

    if-lez v35, :cond_84

    .line 156
    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_ea
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_84

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 157
    .local v7, cookie:Ljava/lang/String;
    const-string v35, "Cookie"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ea

    .line 175
    .end local v7           #cookie:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .restart local v34       #statusLine:Lorg/apache/http/StatusLine;
    :cond_100
    invoke-interface/range {v34 .. v34}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v33

    .line 176
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 177
    .local v13, entity:Lorg/apache/http/HttpEntity;
    sget-boolean v35, Lcom/google/android/music/utils/MusicRequest;->LOG_HEADERS:Z

    if-eqz v35, :cond_147

    .line 178
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, arr$:[Lorg/apache/http/Header;
    array-length v0, v5

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_114
    move/from16 v0, v16

    if-ge v15, v0, :cond_147

    aget-object v14, v5, v15

    .line 179
    .local v14, header:Lorg/apache/http/Header;
    const-string v35, "MusicStreaming"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Response header: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface {v14}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ": "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface {v14}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    add-int/lit8 v15, v15, 0x1

    goto :goto_114

    .line 182
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v14           #header:Lorg/apache/http/Header;
    .end local v15           #i$:I
    .end local v16           #len$:I
    :cond_147
    const/16 v35, 0xc8

    move/from16 v0, v33

    move/from16 v1, v35

    if-lt v0, v1, :cond_15a

    const/16 v35, 0x12c

    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_15a

    if-eqz v13, :cond_15a

    .line 183
    return-object v28

    .line 186
    :cond_15a
    const/16 v35, 0x12e

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_259

    .line 190
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 191
    const-string v35, "Location"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 192
    .local v17, location:Lorg/apache/http/Header;
    if-nez v17, :cond_192

    .line 193
    const-string v35, "MusicStreaming"

    const/16 v36, 0x3

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_182

    .line 194
    const-string v35, "MusicStreaming"

    const-string v36, "Redirect requested but no Location specified."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v17           #location:Lorg/apache/http/Header;
    .end local v22           #params:Lorg/apache/http/params/HttpParams;
    .end local v34           #statusLine:Lorg/apache/http/StatusLine;
    :cond_182
    const/16 v35, 0xa

    move/from16 v0, v23

    move/from16 v1, v35

    if-lt v0, v1, :cond_415

    .line 300
    new-instance v35, Ljava/io/IOException;

    const-string v36, "Music request failed due to too many redirects."

    invoke-direct/range {v35 .. v36}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 198
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v17       #location:Lorg/apache/http/Header;
    .restart local v22       #params:Lorg/apache/http/params/HttpParams;
    .restart local v34       #statusLine:Lorg/apache/http/StatusLine;
    :cond_192
    const-string v35, "MusicStreaming"

    const/16 v36, 0x3

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v35

    if-eqz v35, :cond_1b8

    .line 199
    const-string v35, "MusicStreaming"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Following redirect to "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1b8
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v24

    .line 202
    .local v24, redirectUrl:Ljava/lang/String;
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    .end local p1
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 204
    .restart local p1
    add-int/lit8 v23, v23, 0x1

    .line 207
    const-string v35, "Set-Cookie"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v8

    .line 208
    .local v8, cookieHeaders:[Lorg/apache/http/Header;
    move-object v5, v8

    .restart local v5       #arr$:[Lorg/apache/http/Header;
    array-length v0, v5

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v15, 0x0

    .restart local v15       #i$:I
    :goto_1d6
    move/from16 v0, v16

    if-ge v15, v0, :cond_23

    aget-object v7, v5, v15

    .line 209
    .local v7, cookie:Lorg/apache/http/Header;
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v32

    .line 210
    .local v32, setCookieString:Ljava/lang/String;
    if-eqz v32, :cond_1e8

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v35

    if-nez v35, :cond_1eb

    .line 208
    :cond_1e8
    :goto_1e8
    add-int/lit8 v15, v15, 0x1

    goto :goto_1d6

    .line 213
    :cond_1eb
    const/16 v35, 0x3d

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    .line 214
    .local v20, nameLength:I
    const/16 v35, 0x3b

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 215
    .local v12, endOfCookieIndex:I
    const/16 v35, -0x1

    move/from16 v0, v20

    move/from16 v1, v35

    if-eq v0, v1, :cond_20d

    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v12, v0, :cond_22b

    .line 216
    :cond_20d
    const-string v35, "MusicStreaming"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Invalid cookie format: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 219
    :cond_22b
    const/16 v35, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, cookieName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/MusicRequest;->mPassthroughCookies:Ljava/util/TreeSet;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e8

    .line 221
    const/16 v35, 0x0

    add-int/lit8 v36, v12, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1e8

    .line 224
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v7           #cookie:Lorg/apache/http/Header;
    .end local v8           #cookieHeaders:[Lorg/apache/http/Header;
    .end local v9           #cookieName:Ljava/lang/String;
    .end local v12           #endOfCookieIndex:I
    .end local v15           #i$:I
    .end local v16           #len$:I
    .end local v17           #location:Lorg/apache/http/Header;
    .end local v20           #nameLength:I
    .end local v24           #redirectUrl:Ljava/lang/String;
    .end local v32           #setCookieString:Ljava/lang/String;
    :cond_259
    const/16 v35, 0x191

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_2a0

    .line 225
    const-string v19, "Received 401 Unauthorized from server."

    .line 226
    .local v19, msg:Ljava/lang/String;
    sget-boolean v35, Lcom/google/android/music/utils/MusicRequest;->LOGV:Z

    if-eqz v35, :cond_270

    .line 227
    const-string v35, "MusicStreaming"

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_270
    if-eqz v4, :cond_294

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/MusicRequest;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v6}, Lcom/google/android/music/sync/google/MusicAuthInfo;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 231
    if-eqz v31, :cond_294

    if-nez v23, :cond_294

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/utils/MusicRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 234
    const/16 v31, 0x0

    .line 235
    sget-boolean v35, Lcom/google/android/music/utils/MusicRequest;->LOGV:Z

    if-eqz v35, :cond_23

    const-string v35, "MusicStreaming"

    const-string v36, "Will retry with updated token"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 239
    :cond_294
    new-instance v35, Lorg/apache/http/client/HttpResponseException;

    move-object/from16 v0, v35

    move/from16 v1, v33

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v35

    .line 240
    .end local v19           #msg:Ljava/lang/String;
    :cond_2a0
    const/16 v35, 0x193

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_322

    .line 241
    const-string v35, "X-Rejected-Reason"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v27

    .line 242
    .local v27, rejectionReasonHeader:Lorg/apache/http/Header;
    if-eqz v27, :cond_314

    .line 243
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    .line 244
    .local v25, rejectionReason:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_314

    .line 245
    const/16 v26, 0x0

    .line 246
    .local v26, rejectionReasonEnum:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    const-string v35, "DEVICE_NOT_AUTHORIZED"

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2da

    .line 247
    sget-object v26, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    .line 254
    :cond_2ce
    :goto_2ce
    if-eqz v26, :cond_2f8

    .line 257
    new-instance v35, Lcom/google/android/music/dl/ServerRejectionException;

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/ServerRejectionException;-><init>(Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;)V

    throw v35

    .line 248
    :cond_2da
    const-string v35, "ANOTHER_STREAM_BEING_PLAYED"

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2e9

    .line 249
    sget-object v26, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    goto :goto_2ce

    .line 250
    :cond_2e9
    const-string v35, "STREAM_RATE_LIMIT_REACHED"

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_2ce

    .line 251
    sget-object v26, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    goto :goto_2ce

    .line 259
    :cond_2f8
    const-string v35, "MusicStreaming"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Server returned an unknown rejection reason: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v25           #rejectionReason:Ljava/lang/String;
    .end local v26           #rejectionReasonEnum:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    :cond_314
    new-instance v35, Lorg/apache/http/client/HttpResponseException;

    const-string v36, "Unable to stream due to 403 error"

    move-object/from16 v0, v35

    move/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v35

    .line 266
    .end local v27           #rejectionReasonHeader:Lorg/apache/http/Header;
    :cond_322
    const/16 v35, 0x194

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_345

    .line 267
    const-string v19, "Music request failed due to 404 (file not found) error"

    .line 268
    .restart local v19       #msg:Ljava/lang/String;
    sget-boolean v35, Lcom/google/android/music/utils/MusicRequest;->LOGV:Z

    if-eqz v35, :cond_339

    .line 269
    const-string v35, "MusicStreaming"

    move-object/from16 v0, v35

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_339
    new-instance v35, Lorg/apache/http/client/HttpResponseException;

    move-object/from16 v0, v35

    move/from16 v1, v33

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v35

    .line 272
    .end local v19           #msg:Ljava/lang/String;
    :cond_345
    const/16 v35, 0x1f7

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_3d2

    .line 273
    const-string v35, "Retry-After"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v35

    if-eqz v35, :cond_3c9

    .line 275
    :try_start_359
    const-string v35, "Retry-After"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .line 277
    .local v29, retryAfterInSeconds:J
    const-string v35, "MusicStreaming"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Server said to retry after "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " seconds"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v35, Lcom/google/android/music/dl/ServiceUnavailableException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Music request failed due to 503 (Service Unavailable) error.  Unavailable for "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " seconds."

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-wide/from16 v1, v29

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/ServiceUnavailableException;-><init>(JLjava/lang/String;)V

    throw v35
    :try_end_3ba
    .catch Ljava/lang/NumberFormatException; {:try_start_359 .. :try_end_3ba} :catch_3ba

    .line 282
    .end local v29           #retryAfterInSeconds:J
    :catch_3ba
    move-exception v21

    .line 285
    .local v21, ne:Ljava/lang/NumberFormatException;
    new-instance v35, Lorg/apache/http/client/HttpResponseException;

    const-string v36, "Music request failed to 503 error."

    move-object/from16 v0, v35

    move/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v35

    .line 289
    .end local v21           #ne:Ljava/lang/NumberFormatException;
    :cond_3c9
    const-string v35, "MusicStreaming"

    const-string v36, "Received 503 with no Retry-After header"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 292
    :cond_3d2
    sget-boolean v35, Lcom/google/android/music/utils/MusicRequest;->LOGV:Z

    if-eqz v35, :cond_3f2

    .line 293
    const-string v35, "MusicStreaming"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Music request failed due to HTTP error "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_3f2
    new-instance v35, Lorg/apache/http/client/HttpResponseException;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Music request failed due to HTTP error "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v35

    .line 305
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v22           #params:Lorg/apache/http/params/HttpParams;
    .end local v34           #statusLine:Lorg/apache/http/StatusLine;
    :cond_415
    new-instance v35, Ljava/io/IOException;

    const-string v36, "Unable to retreive stream"

    invoke-direct/range {v35 .. v36}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v35
.end method
