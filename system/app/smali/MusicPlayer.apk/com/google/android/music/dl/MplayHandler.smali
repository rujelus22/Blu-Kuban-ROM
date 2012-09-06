.class public Lcom/google/android/music/dl/MplayHandler;
.super Lcom/google/android/music/dl/DownloadHandler;
.source "MplayHandler.java"


# static fields
.field private static final LOGV:Z

.field private static final LOG_HTTP:Z

.field private static final mMimeToExtensionMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAcceptHeaderValue:Ljava/lang/String;

.field private mAccount:Landroid/accounts/Account;

.field private final mAndroidId:Ljava/lang/String;

.field private volatile mContentType:Ljava/lang/String;

.field private mDownloadSucceeded:Z

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mInputStream:Ljava/io/InputStream;

.field private final mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

.field private mPartialLength:J

.field private mPassthroughCookies:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final mSupportedInternetMediaTypes:Ljava/util/TreeSet;
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
    .registers 3

    .prologue
    .line 58
    const-string v0, "MplayHandler"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOG_HTTP:Z

    .line 89
    const-string v0, "MplayHandler"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    .line 99
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-string v1, "audio/mpeg"

    const-string v2, "mp3"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "audio/aac"

    const-string v2, "aac"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "audio/ogg"

    const-string v2, "ogg"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "audio/mp4"

    const-string v2, "m4a"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "audio/x-wav"

    const-string v2, "wav"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "audio/x-ms-wma"

    const-string v2, "wma"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "audio/flac"

    const-string v2, "flac"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "audio/x-matroska"

    const-string v2, "mka"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/dl/MplayHandler;->mMimeToExtensionMap:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/common/http/GoogleHttpClient;)V
    .registers 19
    .parameter "context"
    .parameter "preferences"
    .parameter "httpClient"

    .prologue
    .line 113
    invoke-direct/range {p0 .. p2}, Lcom/google/android/music/dl/DownloadHandler;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 91
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/music/dl/MplayHandler;->mDownloadSucceeded:Z

    .line 93
    const-wide/16 v11, -0x1

    iput-wide v11, p0, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    .line 115
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "android_id"

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mAndroidId:Ljava/lang/String;

    .line 119
    iget-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mAccount:Landroid/accounts/Account;

    .line 120
    new-instance v11, Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "music_download_passthrough_cookies"

    const-string v13, "sjsc"

    invoke-static {v11, v12, v13}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, passthroughCookies:Ljava/lang/String;
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mPassthroughCookies:Ljava/util/TreeSet;

    .line 124
    if-eqz v8, :cond_64

    .line 128
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_52
    if-ge v4, v7, :cond_64

    aget-object v6, v2, v4

    .line 129
    .local v6, key:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_61

    .line 130
    iget-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mPassthroughCookies:Ljava/util/TreeSet;

    invoke-virtual {v11, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 135
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #len$:I
    :cond_64
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "music_supported_audio"

    const-string v13, "mpeg"

    invoke-static {v11, v12, v13}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, supportedAudioTypes:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v1, acceptHeaderValue:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mSupportedInternetMediaTypes:Ljava/util/TreeSet;

    .line 140
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, types:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_87
    array-length v11, v10

    if-ge v3, v11, :cond_da

    .line 142
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v3

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, internetMediaType:Ljava/lang/String;
    sget-object v11, Lcom/google/android/music/dl/MplayHandler;->mMimeToExtensionMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c1

    .line 144
    iget-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mSupportedInternetMediaTypes:Ljava/util/TreeSet;

    invoke-virtual {v11, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 145
    if-eqz v3, :cond_bb

    .line 146
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_bb
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 150
    :cond_c1
    const-string v11, "MplayHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t enable unsupported audio type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    .line 153
    .end local v5           #internetMediaType:Ljava/lang/String;
    :cond_da
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mAcceptHeaderValue:Ljava/lang/String;

    .line 154
    sget-boolean v11, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v11, :cond_fe

    .line 155
    const-string v11, "MplayHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Accept header value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/music/dl/MplayHandler;->mAcceptHeaderValue:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_fe
    return-void
.end method

.method private getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/http/client/HttpResponseException;
        }
    .end annotation

    .prologue
    .line 643
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 644
    :catch_7
    move-exception v0

    .line 645
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/accounts/OperationCanceledException;

    if-eqz v1, :cond_20

    .line 646
    const-string v1, "MplayHandler"

    const-string v2, "Getting auth token canceled"

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    .line 648
    invoke-virtual {v1, v0}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 649
    throw v1

    .line 651
    :cond_20
    const-string v1, "MplayHandler"

    const-string v2, "Failed to get auth token"

    invoke-static {v1, v2, v0}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    const/16 v2, 0x191

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to obtain auth token for music streaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private notifySharedPreviewMetadataUpdate(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/sharedpreview/PreviewResponse;)V
    .registers 7
    .parameter "order"
    .parameter "previewResponse"

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.sharedpreviewmetadataupdate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sharedurl"

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v2, "duration"

    iget v3, p2, Lcom/google/android/music/sharedpreview/PreviewResponse;->mPreviewDurationMillis:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    iget-object v2, p2, Lcom/google/android/music/sharedpreview/PreviewResponse;->mPlayType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/music/sharedpreview/PreviewResponse;->convertPreviewType(Ljava/lang/String;)I

    move-result v1

    .line 277
    .local v1, playType:I
    const-string v2, "playtype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    iget-object v2, p0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method private parseContentType(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 658
    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 659
    const/4 v0, 0x0

    .line 660
    if-eqz v1, :cond_1f

    array-length v2, v1

    if-eqz v2, :cond_1f

    .line 662
    aget-object v0, v1, v3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 665
    :cond_1f
    return-object v0
.end method

.method private setAtHomeAccount()V
    .registers 4

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeUtils;->getAtHomeDeviceAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 193
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_b

    .line 194
    iput-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mAccount:Landroid/accounts/Account;

    .line 198
    :goto_a
    return-void

    .line 196
    :cond_b
    const-string v1, "MplayHandler"

    const-string v2, "AtHome account is not found"

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_9

    .line 681
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 683
    :cond_9
    return-void
.end method

.method public downloadSucceeded()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/android/music/dl/MplayHandler;->mDownloadSucceeded:Z

    return v0
.end method

.method public downloadTo(Ljava/io/OutputStream;)V
    .registers 15
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStartTime(J)V

    .line 209
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_15

    .line 210
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing input stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_15
    const/4 v10, 0x0

    .line 214
    .local v10, success:Z
    const/16 v0, 0x400

    :try_start_18
    new-array v6, v0, [B

    .line 216
    .local v6, buff:[B
    const/4 v8, 0x0

    .line 217
    .local v8, first_buffer_received:Z
    const-wide/16 v11, 0x0

    .line 219
    .local v11, written:J
    :cond_1d
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, read:I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_c4

    .line 220
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 221
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_54
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_32} :catch_32

    .line 242
    .end local v6           #buff:[B
    .end local v8           #first_buffer_received:Z
    .end local v9           #read:I
    .end local v11           #written:J
    :catch_32
    move-exception v7

    .line 243
    .local v7, e:Ljava/io/IOException;
    :try_start_33
    sget-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOG_HTTP:Z

    if-eqz v0, :cond_53

    .line 244
    const-string v0, "MplayHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MplayHandler.downloadTo: IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    :cond_53
    throw v7
    :try_end_54
    .catchall {:try_start_33 .. :try_end_54} :catchall_54

    .line 257
    .end local v7           #e:Ljava/io/IOException;
    :catchall_54
    move-exception v0

    move-object v1, v0

    iget-object v2, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v10, :cond_121

    const/4 v0, 0x1

    :goto_5b
    invoke-static {v2, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    .line 259
    sget-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOG_HTTP:Z

    if-eqz v0, :cond_83

    .line 260
    const-string v0, "MplayHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->toDetailedString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    throw v1

    .line 224
    .restart local v6       #buff:[B
    .restart local v8       #first_buffer_received:Z
    .restart local v9       #read:I
    .restart local v11       #written:J
    :cond_84
    if-nez v8, :cond_92

    .line 225
    :try_start_86
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v1, p0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 227
    const/4 v8, 0x1

    .line 229
    :cond_92
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 230
    iget-wide v0, p0, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1d

    .line 231
    int-to-long v0, v9

    add-long/2addr v11, v0

    .line 232
    iget-wide v0, p0, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    cmp-long v0, v11, v0

    if-ltz v0, :cond_1d

    .line 233
    sget-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v0, :cond_c4

    const-string v0, "MplayHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reached partial length of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_c4
    const/4 v10, 0x1

    .line 239
    sget-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOG_HTTP:Z

    if-eqz v0, :cond_e3

    .line 240
    const-string v0, "MplayHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadTo: done "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e3
    .catchall {:try_start_86 .. :try_end_e3} :catchall_54
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_e3} :catch_32

    .line 257
    :cond_e3
    iget-object v1, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v10, :cond_11f

    const/4 v0, 0x1

    :goto_e8
    invoke-static {v1, v0}, Lcom/google/common/io/Closeables;->close(Ljava/io/Closeable;Z)V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    .line 259
    sget-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOG_HTTP:Z

    if-eqz v0, :cond_110

    .line 260
    const-string v0, "MplayHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v2}, Lcom/google/android/music/dl/DownloadOrder;->toDetailedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/MplayHandler;->mDownloadSucceeded:Z

    .line 264
    sget-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOG_HTTP:Z

    if-eqz v0, :cond_11e

    .line 265
    const-string v0, "MplayHandler"

    const-string v1, "Download finished gracefully"

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_11e
    return-void

    .line 257
    :cond_11f
    const/4 v0, 0x0

    goto :goto_e8

    .end local v6           #buff:[B
    .end local v8           #first_buffer_received:Z
    .end local v9           #read:I
    .end local v11           #written:J
    :cond_121
    const/4 v0, 0x0

    goto/16 :goto_5b
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method protected getDownloadStream()Ljava/io/InputStream;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v9

    .line 286
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/dl/MplayHandler;->mAccount:Landroid/accounts/Account;

    .line 287
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/music/dl/MplayHandler;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v8

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/dl/MplayHandler;->mAndroidId:Ljava/lang/String;

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v13

    .line 290
    const/4 v7, 0x1

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/dl/ContentIdentifier;->isAtHomeDomain()Z

    move-result v4

    .line 292
    const/4 v3, 0x0

    .line 293
    if-eqz v4, :cond_86f

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getDomainParam()Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 296
    const-string v3, "MplayHandler"

    const-string v4, "Share token is missing"

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    const/16 v4, 0x191

    const-string v5, "No share token"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 302
    :cond_4d
    sget-boolean v4, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v4, :cond_6f

    .line 303
    const-string v4, "MplayHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using shared token: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    move-object v4, v3

    .line 309
    :goto_70
    const/4 v6, 0x0

    .line 311
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v14}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/music/dl/ContentIdentifier;->isSharedDomain()Z

    move-result v14

    if-eqz v14, :cond_c6

    .line 314
    new-instance v14, Lcom/google/android/music/sharedpreview/SharedPreviewClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/dl/MplayHandler;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-direct {v14, v3, v15}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;-><init>(Landroid/content/Context;Lcom/google/android/common/http/GoogleHttpClient;)V

    .line 316
    :try_start_99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->getPreviewResponse(Ljava/lang/String;)Lcom/google/android/music/sharedpreview/PreviewResponse;

    move-result-object v15

    .line 317
    iget-object v3, v15, Lcom/google/android/music/sharedpreview/PreviewResponse;->mUrl:Ljava/lang/String;

    .line 318
    if-nez v3, :cond_b6

    .line 319
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to retrieve streaming url"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b1
    .catchall {:try_start_99 .. :try_end_b1} :catchall_b1

    .line 323
    :catchall_b1
    move-exception v3

    invoke-virtual {v14}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->close()V

    throw v3

    .line 321
    :cond_b6
    :try_start_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/google/android/music/dl/MplayHandler;->notifySharedPreviewMetadataUpdate(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/sharedpreview/PreviewResponse;)V
    :try_end_c3
    .catchall {:try_start_b6 .. :try_end_c3} :catchall_b1

    .line 323
    invoke-virtual {v14}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->close()V

    .line 326
    :cond_c6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v3, "&targetkbps="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v14}, Lcom/google/android/music/dl/DownloadOrder;->getRecommendedBitrate()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->hasExplicitPlaybackPurpose()Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/dl/ContentIdentifier;->isAtHomePartyDomain()Z

    move-result v3

    .line 336
    if-eqz v3, :cond_165

    .line 337
    const-string v3, "&pt=a"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :goto_f7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v14

    .line 357
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getRecommendedBitrate()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/music/store/MusicRingtoneManager;->getRingtoneFileSize(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    .line 363
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-ltz v3, :cond_13d

    .line 364
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    .line 368
    :cond_13d
    const-wide/16 v16, 0x0

    cmp-long v3, v9, v16

    if-eqz v3, :cond_14c

    .line 369
    const-string v3, "&start="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 372
    :cond_14c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 373
    new-instance v16, Ljava/util/LinkedList;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    .line 374
    :goto_155
    const/16 v3, 0xa

    if-ge v6, v3, :cond_620

    .line 375
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_1c5

    .line 376
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 339
    :cond_165
    const-string v3, "&pt=e"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f7

    .line 341
    :cond_16b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->hasPrefetchPlaybackPurpose()Z

    move-result v3

    if-eqz v3, :cond_181

    .line 343
    const-string v3, "&dt=pc"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v3, "&pt=a"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f7

    .line 346
    :cond_181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v3

    if-eqz v3, :cond_192

    .line 348
    const-string v3, "&dt=uc"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f7

    .line 349
    :cond_192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v3

    if-eqz v3, :cond_1a3

    .line 351
    const-string v3, "&dt=rt"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f7

    .line 353
    :cond_1a3
    const-string v3, "MplayHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected download purpose: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v15}, Lcom/google/android/music/dl/DownloadOrder;->getPurposes()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f7

    .line 378
    :cond_1c5
    if-nez v6, :cond_22c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22c

    .line 379
    new-instance v3, Ljava/util/ArrayList;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 380
    new-instance v17, Lcom/google/android/music/utils/NameValuePairImpl;

    const-string v18, "token"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/utils/NameValuePairImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v17, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 382
    new-instance v18, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual/range {v17 .. v18}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 383
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 387
    :goto_1fd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    .line 388
    const/16 v17, 0x2ee0

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 389
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 392
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_236

    .line 393
    new-instance v3, Ljava/io/IOException;

    const-string v4, "No auth token available."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 385
    :cond_22c
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_1fd

    .line 395
    :cond_236
    if-nez v6, :cond_3ed

    .line 400
    if-eqz v11, :cond_3c9

    const-string v3, "android.athome"

    iget-object v0, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c9

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v17, "Authorization"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Bearer "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_270
    :goto_270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v17, "X-Device-ID"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v12}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v17, "X-Device-Logging-ID"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v17, "Accept"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mAcceptHeaderValue:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-wide/16 v17, 0x0

    cmp-long v3, v14, v17

    if-eqz v3, :cond_326

    .line 420
    sget-boolean v3, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v3, :cond_2fe

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-virtual {v3}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-float v3, v0

    long-to-float v0, v14

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    mul-float v3, v3, v17

    .line 424
    const-string v17, "MplayHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Setting range headers to start at byte "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", ~"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, "ms"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_2fe
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v17, "Range"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bytes="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_326
    sget-boolean v3, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v3, :cond_34e

    .line 440
    const-string v3, "MplayHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Requesting URL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_34e
    sget-boolean v3, Lcom/google/android/music/dl/MplayHandler;->LOG_HTTP:Z

    if-eqz v3, :cond_446

    .line 444
    const-string v3, "MplayHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Starting request for: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/dl/DownloadOrder;->toDetailedString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v3, "MplayHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Requesting URL: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v3, 0x0

    :goto_3a8
    move/from16 v0, v18

    if-ge v3, v0, :cond_446

    aget-object v19, v17, v3

    .line 448
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Authorization"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_3c6

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Cookie"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_413

    .line 447
    :cond_3c6
    :goto_3c6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a8

    .line 404
    :cond_3c9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v17, "Authorization"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "GoogleLogin auth="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_270

    .line 406
    :cond_3ed
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_270

    .line 407
    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3f7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_270

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v18, v0

    const-string v19, "Cookie"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f7

    .line 452
    :cond_413
    const-string v20, "MplayHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Request header: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c6

    .line 455
    :cond_446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 456
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 457
    if-nez v3, :cond_46b

    .line 458
    const-string v3, "MplayHandler"

    const-string v4, "Stream-download response status line is null."

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v3, Ljava/io/IOException;

    const-string v4, "StatusLine is null -- should not happen."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 462
    :cond_46b
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 463
    sget-boolean v3, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v3, :cond_491

    .line 464
    const-string v3, "MplayHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Response: status="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_491
    sget-boolean v3, Lcom/google/android/music/dl/MplayHandler;->LOG_HTTP:Z

    if-eqz v3, :cond_505

    .line 467
    const-string v3, "MplayHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "status="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/4 v3, 0x0

    :goto_4bd
    move/from16 v0, v20

    if-ge v3, v0, :cond_505

    aget-object v21, v19, v3

    .line 469
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Set-Cookie"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_4d2

    .line 468
    :goto_4cf
    add-int/lit8 v3, v3, 0x1

    goto :goto_4bd

    .line 472
    :cond_4d2
    const-string v22, "MplayHandler"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Response header: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/music/log/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4cf

    .line 475
    :cond_505
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    .line 476
    const/16 v3, 0xc8

    move/from16 v0, v18

    if-lt v0, v3, :cond_5fd

    const/16 v3, 0x12c

    move/from16 v0, v18

    if-ge v0, v3, :cond_5fd

    if-eqz v19, :cond_5fd

    .line 477
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/MplayHandler;->parseContentType(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    if-eqz v3, :cond_537

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mSupportedInternetMediaTypes:Ljava/util/TreeSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_541

    .line 479
    :cond_537
    new-instance v3, Lcom/google/android/music/dl/UnsupportedAudioTypeException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/music/dl/UnsupportedAudioTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 482
    :cond_541
    sget-boolean v3, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v3, :cond_561

    .line 483
    const-string v3, "MplayHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received valid response for playback with content type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_561
    const-string v3, "Content-Length"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 486
    if-eqz v3, :cond_5ca

    array-length v4, v3

    if-lez v4, :cond_5ca

    const/4 v4, 0x1

    .line 487
    :goto_56f
    if-nez v4, :cond_579

    .line 488
    const-string v3, "X-Estimated-Content-Length"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 491
    :cond_579
    if-eqz v3, :cond_5ef

    array-length v5, v3

    if-lez v5, :cond_5ef

    .line 492
    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 494
    :try_start_585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/music/dl/DownloadOrder;->setTranscodedLength(J)V

    .line 495
    const-wide/16 v6, 0x0

    cmp-long v3, v14, v6

    if-nez v3, :cond_5cc

    const-wide/16 v6, 0x0

    cmp-long v3, v9, v6

    if-nez v3, :cond_5cc

    if-eqz v4, :cond_5cc

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/music/dl/DownloadOrder;->setShouldCompareCompleted(Z)V
    :try_end_5a6
    .catch Ljava/lang/NumberFormatException; {:try_start_585 .. :try_end_5a6} :catch_5d5

    .line 507
    :cond_5a6
    :goto_5a6
    new-instance v4, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;

    invoke-static/range {v19 .. v19}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/dl/MplayHandler;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {v4, v3, v5}, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/AbortableHttpRequest;)V

    .line 510
    const-string v3, "X-ID3-Footer-Attached"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 511
    if-eqz v3, :cond_5fb

    array-length v3, v3

    if-eqz v3, :cond_5fb

    .line 512
    new-instance v3, Lcom/google/android/music/dl/ID3v1FooterInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-direct {v3, v4, v5}, Lcom/google/android/music/dl/ID3v1FooterInputStream;-><init>(Ljava/io/InputStream;Lcom/google/android/music/dl/DownloadOrder;)V

    .line 514
    :goto_5c9
    return-object v3

    .line 486
    :cond_5ca
    const/4 v4, 0x0

    goto :goto_56f

    .line 498
    :cond_5cc
    :try_start_5cc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/music/dl/DownloadOrder;->setShouldCompareCompleted(Z)V
    :try_end_5d4
    .catch Ljava/lang/NumberFormatException; {:try_start_5cc .. :try_end_5d4} :catch_5d5

    goto :goto_5a6

    .line 500
    :catch_5d5
    move-exception v3

    .line 501
    const-string v4, "MplayHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server sent invalid content length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a6

    .line 503
    :cond_5ef
    sget-boolean v3, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v3, :cond_5a6

    .line 504
    const-string v3, "MplayHandler"

    const-string v4, "No Content-Length or X-Estimated-Content-Length provided"

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a6

    :cond_5fb
    move-object v3, v4

    .line 514
    goto :goto_5c9

    .line 518
    :cond_5fd
    const/16 v3, 0x12e

    move/from16 v0, v18

    if-ne v0, v3, :cond_6ed

    .line 522
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 523
    const-string v3, "Location"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 524
    if-nez v3, :cond_62c

    .line 525
    const-string v3, "MplayHandler"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_620

    .line 526
    const-string v3, "MplayHandler"

    const-string v4, "Redirect requested but no Location specified."

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_620
    const/16 v3, 0xa

    if-lt v6, v3, :cond_863

    .line 632
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to download stream due to too many redirects."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 530
    :cond_62c
    const-string v5, "MplayHandler"

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/google/android/music/log/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_656

    .line 531
    const-string v5, "MplayHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Following redirect to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/google/android/music/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_656
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 535
    add-int/lit8 v5, v6, 0x1

    .line 538
    const-string v6, "Set-Cookie"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v17

    .line 539
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v6, 0x0

    :goto_66a
    move/from16 v0, v18

    if-ge v6, v0, :cond_6bd

    aget-object v19, v17, v6

    .line 540
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 541
    if-eqz v19, :cond_67c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_67f

    .line 539
    :cond_67c
    :goto_67c
    add-int/lit8 v6, v6, 0x1

    goto :goto_66a

    .line 544
    :cond_67f
    const/16 v20, 0x3d

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    .line 545
    const/16 v21, 0x3b

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    .line 546
    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_69f

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6c1

    .line 547
    :cond_69f
    const-string v6, "MplayHandler"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid cookie format: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6bd
    :goto_6bd
    move v6, v5

    move-object v5, v3

    .line 630
    goto/16 :goto_155

    .line 550
    :cond_6c1
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mPassthroughCookies:Ljava/util/TreeSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_67c

    .line 552
    const/16 v20, 0x0

    add-int/lit8 v21, v21, 0x1

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_67c

    .line 555
    :cond_6ed
    const/16 v3, 0x191

    move/from16 v0, v18

    if-ne v0, v3, :cond_731

    .line 556
    const-string v3, "Received 401 Unauthorized from server."

    .line 557
    sget-boolean v17, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v17, :cond_700

    .line 558
    const-string v17, "MplayHandler"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_700
    if-eqz v11, :cond_729

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v8}, Lcom/google/android/music/sync/google/MusicAuthInfo;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 562
    if-eqz v7, :cond_729

    if-nez v6, :cond_729

    .line 564
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/music/dl/MplayHandler;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v7

    .line 565
    const/4 v3, 0x0

    .line 566
    sget-boolean v8, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v8, :cond_86b

    const-string v8, "MplayHandler"

    const-string v17, "Will retry with updated token"

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    move v7, v3

    goto/16 :goto_155

    .line 570
    :cond_729
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    move/from16 v0, v18

    invoke-direct {v4, v0, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 571
    :cond_731
    const/16 v3, 0x193

    move/from16 v0, v18

    if-ne v0, v3, :cond_796

    .line 572
    const-string v3, "X-Rejected-Reason"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 573
    if-eqz v3, :cond_78c

    .line 574
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 575
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_78c

    .line 576
    const/4 v3, 0x0

    .line 577
    const-string v5, "DEVICE_NOT_AUTHORIZED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75e

    .line 578
    sget-object v3, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    .line 585
    :cond_756
    :goto_756
    if-eqz v3, :cond_774

    .line 588
    new-instance v4, Lcom/google/android/music/dl/ServerRejectionException;

    invoke-direct {v4, v3}, Lcom/google/android/music/dl/ServerRejectionException;-><init>(Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;)V

    throw v4

    .line 579
    :cond_75e
    const-string v5, "ANOTHER_STREAM_BEING_PLAYED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_769

    .line 580
    sget-object v3, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    goto :goto_756

    .line 581
    :cond_769
    const-string v5, "STREAM_RATE_LIMIT_REACHED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_756

    .line 582
    sget-object v3, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    goto :goto_756

    .line 590
    :cond_774
    const-string v3, "MplayHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server returned an unknown rejection reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_78c
    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    const-string v4, "Unable to stream due to 403 error"

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 597
    :cond_796
    const/16 v3, 0x194

    move/from16 v0, v18

    if-ne v0, v3, :cond_7af

    .line 598
    const-string v3, "Unable to download stream due to 404 (file not found) error"

    .line 599
    sget-boolean v4, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v4, :cond_7a7

    .line 600
    const-string v4, "MplayHandler"

    invoke-static {v4, v3}, Lcom/google/android/music/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_7a7
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    move/from16 v0, v18

    invoke-direct {v4, v0, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 603
    :cond_7af
    const/16 v3, 0x1f7

    move/from16 v0, v18

    if-ne v0, v3, :cond_828

    .line 604
    const-string v3, "Retry-After"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_81b

    .line 606
    :try_start_7bf
    const-string v3, "Retry-After"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 608
    const-string v5, "MplayHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Server said to retry after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v5, Lcom/google/android/music/dl/ServiceUnavailableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to download stream due to 503 (Service Unavailable) error.  Unavailable for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6}, Lcom/google/android/music/dl/ServiceUnavailableException;-><init>(JLjava/lang/String;)V

    throw v5
    :try_end_810
    .catch Ljava/lang/NumberFormatException; {:try_start_7bf .. :try_end_810} :catch_810

    .line 613
    :catch_810
    move-exception v3

    .line 617
    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    const-string v4, "Unable to download stream due to 503 error."

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 621
    :cond_81b
    const-string v3, "MplayHandler"

    const-string v17, "Received 503 with no Retry-After header"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v5

    move v5, v6

    goto/16 :goto_6bd

    .line 624
    :cond_828
    sget-boolean v3, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v3, :cond_846

    .line 625
    const-string v3, "MplayHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to download stream due to HTTP error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_846
    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to download stream due to HTTP error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 637
    :cond_863
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unable to retreive stream"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_86b
    move-object v8, v7

    move v7, v3

    goto/16 :goto_155

    :cond_86f
    move-object v4, v3

    goto/16 :goto_70
.end method

.method public getFileExtension()Ljava/lang/String;
    .registers 3

    .prologue
    .line 670
    sget-object v0, Lcom/google/android/music/dl/MplayHandler;->mMimeToExtensionMap:Lcom/google/common/collect/ImmutableMap;

    iget-object v1, p0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public prepareInputStream()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/music/dl/MplayHandler;->getDownloadStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    .line 203
    return-void
.end method

.method public setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V
    .registers 4
    .parameter "order"
    .parameter "storeService"

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lcom/google/android/music/dl/DownloadHandler;->setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V

    .line 169
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isAtHomeDomain()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 170
    invoke-direct {p0}, Lcom/google/android/music/dl/MplayHandler;->setAtHomeAccount()V

    .line 174
    :goto_10
    return-void

    .line 172
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/dl/MplayHandler;->setSyncAccount(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V

    goto :goto_10
.end method

.method public setSyncAccount(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V
    .registers 8
    .parameter "order"
    .parameter "storeService"

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v2

    if-nez v2, :cond_b

    .line 189
    :goto_a
    return-void

    .line 184
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getSourceAccount()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/google/android/music/store/IStoreService;->getAccountByHash(I)[Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, account:[Ljava/lang/String;
    new-instance v2, Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/music/dl/MplayHandler;->mAccount:Landroid/accounts/Account;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_a

    .line 186
    .end local v0           #account:[Ljava/lang/String;
    :catch_21
    move-exception v1

    .line 187
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "MplayHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find account for sourceAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getSourceAccount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
