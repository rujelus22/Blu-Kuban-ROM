.class public Lcom/google/android/music/dl/MplayHandler;
.super Lcom/google/android/music/dl/DownloadHandler;
.source "MplayHandler.java"


# static fields
.field private static final LOGV:Z

.field private static final LOG_HEADERS:Z

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
    .line 49
    const-string v0, "MusicStreaming"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOG_HEADERS:Z

    .line 80
    const-string v0, "MusicStreaming"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    .line 88
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
    .line 102
    invoke-direct/range {p0 .. p2}, Lcom/google/android/music/dl/DownloadHandler;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 82
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/google/android/music/dl/MplayHandler;->mDownloadSucceeded:Z

    .line 84
    const-wide/16 v11, -0x1

    iput-wide v11, p0, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    .line 104
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "android_id"

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mAndroidId:Ljava/lang/String;

    .line 108
    iget-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mAccount:Landroid/accounts/Account;

    .line 109
    new-instance v11, Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "music_download_passthrough_cookies"

    const-string v13, "sjsc"

    invoke-static {v11, v12, v13}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, passthroughCookies:Ljava/lang/String;
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mPassthroughCookies:Ljava/util/TreeSet;

    .line 113
    if-eqz v8, :cond_64

    .line 117
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

    .line 118
    .local v6, key:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_61

    .line 119
    iget-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mPassthroughCookies:Ljava/util/TreeSet;

    invoke-virtual {v11, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 124
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

    .line 127
    .local v9, supportedAudioTypes:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v1, acceptHeaderValue:Ljava/lang/StringBuilder;
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mSupportedInternetMediaTypes:Ljava/util/TreeSet;

    .line 129
    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, types:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_87
    array-length v11, v10

    if-ge v3, v11, :cond_da

    .line 131
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

    .line 132
    .local v5, internetMediaType:Ljava/lang/String;
    sget-object v11, Lcom/google/android/music/dl/MplayHandler;->mMimeToExtensionMap:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c1

    .line 133
    iget-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mSupportedInternetMediaTypes:Ljava/util/TreeSet;

    invoke-virtual {v11, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 134
    if-eqz v3, :cond_bb

    .line 135
    const-string v11, ", "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_bb
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 139
    :cond_c1
    const-string v11, "MusicStreaming"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t enable unsupported audio type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 142
    .end local v5           #internetMediaType:Ljava/lang/String;
    :cond_da
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/music/dl/MplayHandler;->mAcceptHeaderValue:Ljava/lang/String;

    .line 143
    sget-boolean v11, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v11, :cond_fe

    .line 144
    const-string v11, "MusicStreaming"

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

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_fe
    return-void
.end method

.method private notifySharedPreviewMetadataUpdate(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/sharedpreview/PreviewResponse;)V
    .registers 7
    .parameter "order"
    .parameter "previewResponse"

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.sharedpreviewmetadataupdate"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sharedurl"

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "duration"

    iget v3, p2, Lcom/google/android/music/sharedpreview/PreviewResponse;->mPreviewDurationMillis:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-object v2, p2, Lcom/google/android/music/sharedpreview/PreviewResponse;->mPlayType:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/music/sharedpreview/PreviewResponse;->convertPreviewType(Ljava/lang/String;)I

    move-result v1

    .line 222
    .local v1, playType:I
    const-string v2, "playtype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v2, p0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method private parseContentType(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 7
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 531
    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 532
    .local v1, contentTypes:[Lorg/apache/http/Header;
    const/4 v0, 0x0

    .line 533
    .local v0, contentType:Ljava/lang/String;
    if-eqz v1, :cond_1f

    array-length v2, v1

    if-eqz v2, :cond_1f

    .line 535
    aget-object v2, v1, v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 538
    :cond_1f
    return-object v0
.end method


# virtual methods
.method public downloadSucceeded()Z
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/music/dl/MplayHandler;->mDownloadSucceeded:Z

    return v0
.end method

.method public downloadTo(Ljava/io/OutputStream;)V
    .registers 16
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 176
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/dl/DownloadOrder;->setDownloadStartTime(J)V

    .line 178
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_17

    .line 179
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing input stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_17
    const/16 v0, 0x400

    :try_start_19
    new-array v6, v0, [B

    .line 184
    .local v6, buff:[B
    const/4 v8, 0x0

    .line 185
    .local v8, first_buffer_received:Z
    const-wide/16 v10, 0x0

    .line 186
    .local v10, written:J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    .line 187
    .local v7, currentThread:Ljava/lang/Thread;
    :cond_22
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, read:I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_80

    .line 188
    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 189
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_37

    .line 208
    .end local v6           #buff:[B
    .end local v7           #currentThread:Ljava/lang/Thread;
    .end local v8           #first_buffer_received:Z
    .end local v9           #read:I
    .end local v10           #written:J
    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 209
    iput-object v13, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    throw v0

    .line 191
    .restart local v6       #buff:[B
    .restart local v7       #currentThread:Ljava/lang/Thread;
    .restart local v8       #first_buffer_received:Z
    .restart local v9       #read:I
    .restart local v10       #written:J
    :cond_40
    if-nez v8, :cond_4e

    .line 192
    :try_start_42
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    iget-object v1, p0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/dl/DownloadOrder;->logStatusEvent(Landroid/content/Context;IIZZ)V

    .line 194
    const/4 v8, 0x1

    .line 196
    :cond_4e
    const/4 v0, 0x0

    invoke-virtual {p1, v6, v0, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 197
    iget-wide v0, p0, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 198
    int-to-long v0, v9

    add-long/2addr v10, v0

    .line 199
    iget-wide v0, p0, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    cmp-long v0, v10, v0

    if-ltz v0, :cond_22

    .line 200
    sget-boolean v0, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v0, :cond_80

    const-string v0, "MusicStreaming"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_42 .. :try_end_80} :catchall_37

    .line 208
    :cond_80
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 209
    iput-object v13, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    .line 211
    iput-boolean v12, p0, Lcom/google/android/music/dl/MplayHandler;->mDownloadSucceeded:Z

    .line 212
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method protected getDownloadStream()Ljava/io/InputStream;
    .registers 55
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v41

    .line 231
    .local v41, seekToMs:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v27

    .line 233
    .local v27, loggingId:Ljava/lang/String;
    const/16 v38, 0x0

    .line 234
    .local v38, response:Lorg/apache/http/HttpResponse;
    const/16 v44, 0x1f4

    .line 235
    .local v44, status:I
    const/16 v34, 0xa

    .line 237
    .local v34, redirectsLeft:I
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v48, urlBuilder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteUrl()Ljava/lang/String;

    move-result-object v46

    .line 239
    .local v46, streamingUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/ContentIdentifier;->isSharedDomain()Z

    move-result v50

    if-eqz v50, :cond_85

    .line 240
    new-instance v6, Lcom/google/android/music/sharedpreview/SharedPreviewClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v51, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-direct {v6, v0, v1}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;-><init>(Landroid/content/Context;Lcom/google/android/common/http/GoogleHttpClient;)V

    .line 242
    .local v6, client:Lcom/google/android/music/sharedpreview/SharedPreviewClient;
    :try_start_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteUrl()Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->getPreviewResponse(Ljava/lang/String;)Lcom/google/android/music/sharedpreview/PreviewResponse;

    move-result-object v32

    .line 243
    .local v32, previewResponse:Lcom/google/android/music/sharedpreview/PreviewResponse;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/google/android/music/sharedpreview/PreviewResponse;->mUrl:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 244
    if-nez v46, :cond_73

    .line 245
    new-instance v50, Ljava/io/IOException;

    const-string v51, "Failed to retrieve streaming url"

    invoke-direct/range {v50 .. v51}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v50
    :try_end_6e
    .catchall {:try_start_4e .. :try_end_6e} :catchall_6e

    .line 249
    .end local v32           #previewResponse:Lcom/google/android/music/sharedpreview/PreviewResponse;
    :catchall_6e
    move-exception v50

    invoke-virtual {v6}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->close()V

    throw v50

    .line 247
    .restart local v32       #previewResponse:Lcom/google/android/music/sharedpreview/PreviewResponse;
    :cond_73
    :try_start_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/MplayHandler;->notifySharedPreviewMetadataUpdate(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/sharedpreview/PreviewResponse;)V
    :try_end_82
    .catchall {:try_start_73 .. :try_end_82} :catchall_6e

    .line 249
    invoke-virtual {v6}, Lcom/google/android/music/sharedpreview/SharedPreviewClient;->close()V

    .line 252
    .end local v6           #client:Lcom/google/android/music/sharedpreview/SharedPreviewClient;
    .end local v32           #previewResponse:Lcom/google/android/music/sharedpreview/PreviewResponse;
    :cond_85
    move-object/from16 v0, v48

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v50, "&targetkbps="

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Lcom/google/android/music/dl/DownloadOrder;->getRecommendedBitrate()I

    move-result v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->hasExplicitPlaybackPurpose()Z

    move-result v50

    if-eqz v50, :cond_14b

    .line 258
    const-string v50, "&pt=e"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :goto_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->getCompleted()J

    move-result-wide v7

    .line 275
    .local v7, completedLength:J
    const-wide/16 v50, -0x1

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v50

    if-eqz v50, :cond_106

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->getRecommendedBitrate()I

    move-result v50

    invoke-static/range {v50 .. v50}, Lcom/google/android/music/store/MusicRingtoneManager;->getRingtoneFileSize(I)J

    move-result-wide v50

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    .line 281
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    move-wide/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v52

    cmp-long v50, v50, v52

    if-ltz v50, :cond_106

    .line 282
    const-wide/16 v50, -0x1

    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/dl/MplayHandler;->mPartialLength:J

    .line 286
    :cond_106
    const-wide/16 v50, 0x0

    cmp-long v50, v41, v50

    if-eqz v50, :cond_11d

    .line 287
    const-string v50, "&start="

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 290
    :cond_11d
    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 291
    .local v47, url:Ljava/lang/String;
    const/4 v5, 0x0

    .line 293
    .local v5, authToken:Ljava/lang/String;
    :try_start_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mAccount:Landroid/accounts/Account;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_131
    .catch Landroid/accounts/AuthenticatorException; {:try_start_122 .. :try_end_131} :catch_1bd

    move-result-object v5

    .line 305
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 306
    .local v12, cookies:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/16 v23, 0x1

    .line 307
    .local v23, isFirstRequest:Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    .line 308
    .local v13, currentThread:Ljava/lang/Thread;
    :cond_13d
    :goto_13d
    if-lez v34, :cond_516

    .line 309
    invoke-virtual {v13}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v50

    if-eqz v50, :cond_206

    .line 310
    new-instance v50, Ljava/lang/InterruptedException;

    invoke-direct/range {v50 .. v50}, Ljava/lang/InterruptedException;-><init>()V

    throw v50

    .line 259
    .end local v5           #authToken:Ljava/lang/String;
    .end local v7           #completedLength:J
    .end local v12           #cookies:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v13           #currentThread:Ljava/lang/Thread;
    .end local v23           #isFirstRequest:Z
    .end local v47           #url:Ljava/lang/String;
    :cond_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->hasPrefetchPlaybackPurpose()Z

    move-result v50

    if-eqz v50, :cond_16b

    .line 261
    const-string v50, "&dt=pc"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v50, "&pt=a"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b8

    .line 264
    :cond_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v50

    if-eqz v50, :cond_182

    .line 266
    const-string v50, "&dt=uc"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b8

    .line 267
    :cond_182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v50

    if-eqz v50, :cond_199

    .line 269
    const-string v50, "&dt=rt"

    move-object/from16 v0, v48

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b8

    .line 271
    :cond_199
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Unexpected download purpose: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/google/android/music/dl/DownloadOrder;->getPurposes()I

    move-result v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 294
    .restart local v5       #authToken:Ljava/lang/String;
    .restart local v7       #completedLength:J
    .restart local v47       #url:Ljava/lang/String;
    :catch_1bd
    move-exception v14

    .line 295
    .local v14, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v14}, Landroid/accounts/AuthenticatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v50

    move-object/from16 v0, v50

    instance-of v0, v0, Landroid/accounts/OperationCanceledException;

    move/from16 v50, v0

    if-eqz v50, :cond_1dc

    .line 296
    const-string v50, "MusicStreaming"

    const-string v51, "Getting auth token canceled"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v17, Ljava/lang/InterruptedException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/InterruptedException;-><init>()V

    .line 298
    .local v17, ex:Ljava/lang/InterruptedException;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/InterruptedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 299
    throw v17

    .line 301
    .end local v17           #ex:Ljava/lang/InterruptedException;
    :cond_1dc
    const-string v50, "MusicStreaming"

    const-string v51, "Failed to get auth token"

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-static {v0, v1, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    new-instance v50, Lorg/apache/http/client/HttpResponseException;

    const/16 v51, 0x191

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "Unable to obtain auth token for music streaming: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual {v14}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v50 .. v52}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v50

    .line 312
    .end local v14           #e:Landroid/accounts/AuthenticatorException;
    .restart local v12       #cookies:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .restart local v13       #currentThread:Ljava/lang/Thread;
    .restart local v23       #isFirstRequest:Z
    :cond_206
    new-instance v18, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 313
    .local v18, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v31

    .line 314
    .local v31, params:Lorg/apache/http/params/HttpParams;
    const/16 v50, 0x2ee0

    move-object/from16 v0, v31

    move/from16 v1, v50

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 315
    const/16 v50, 0x2710

    move-object/from16 v0, v31

    move/from16 v1, v50

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 316
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 318
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v50

    if-eqz v50, :cond_23a

    .line 319
    new-instance v50, Ljava/io/IOException;

    const-string v51, "No auth token available."

    invoke-direct/range {v50 .. v51}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v50

    .line 321
    :cond_23a
    if-eqz v23, :cond_35d

    .line 325
    const-string v50, "Authorization"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "GoogleLogin auth="

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/16 v23, 0x0

    .line 333
    :cond_25e
    const-string v50, "X-Device-ID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mAndroidId:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v50, "X-Device-Logging-ID"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v50, "Accept"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mAcceptHeaderValue:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-wide/16 v50, 0x0

    cmp-long v50, v7, v50

    if-eqz v50, :cond_31a

    .line 341
    sget-boolean v50, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v50, :cond_2f4

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/google/android/music/dl/DownloadOrder;->getDuration()J

    move-result-wide v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/google/android/music/dl/DownloadOrder;->getSeekPoint()J

    move-result-wide v52

    sub-long v50, v50, v52

    move-wide/from16 v0, v50

    long-to-float v0, v0

    move/from16 v50, v0

    long-to-float v0, v7

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v52

    move-wide/from16 v0, v52

    long-to-float v0, v0

    move/from16 v52, v0

    div-float v51, v51, v52

    mul-float v33, v50, v51

    .line 345
    .local v33, rangeOffsetEstimateMs:F
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Setting range headers to start at byte "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, ", ~"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "ms"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v33           #rangeOffsetEstimateMs:F
    :cond_2f4
    const-string v50, "Range"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "bytes="

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "-"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_31a
    sget-boolean v50, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v50, :cond_33a

    .line 361
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Requesting URL: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v18 .. v18}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_33a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v38

    .line 364
    invoke-interface/range {v38 .. v38}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v45

    .line 365
    .local v45, statusLine:Lorg/apache/http/StatusLine;
    if-nez v45, :cond_37d

    .line 366
    const-string v50, "MusicStreaming"

    const-string v51, "Stream-download response status line is null."

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v50, Ljava/io/IOException;

    const-string v51, "StatusLine is null -- should not happen."

    invoke-direct/range {v50 .. v51}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v50

    .line 328
    .end local v45           #statusLine:Lorg/apache/http/StatusLine;
    :cond_35d
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v50

    if-lez v50, :cond_25e

    .line 329
    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_367
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_25e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 330
    .local v9, cookie:Ljava/lang/String;
    const-string v50, "Cookie"

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v9}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_367

    .line 370
    .end local v9           #cookie:Ljava/lang/String;
    .end local v20           #i$:Ljava/util/Iterator;
    .restart local v45       #statusLine:Lorg/apache/http/StatusLine;
    :cond_37d
    invoke-interface/range {v45 .. v45}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v44

    .line 371
    sget-boolean v50, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v50, :cond_3a1

    .line 372
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Response: status="

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_3a1
    invoke-interface/range {v38 .. v38}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    .line 375
    .local v16, entity:Lorg/apache/http/HttpEntity;
    sget-boolean v50, Lcom/google/android/music/dl/MplayHandler;->LOG_HEADERS:Z

    if-eqz v50, :cond_3e7

    .line 376
    invoke-interface/range {v38 .. v38}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .local v4, arr$:[Lorg/apache/http/Header;
    array-length v0, v4

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_3b2
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_3e7

    aget-object v19, v4, v20

    .line 377
    .local v19, header:Lorg/apache/http/Header;
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Response header: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, ": "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    add-int/lit8 v20, v20, 0x1

    goto :goto_3b2

    .line 380
    .end local v4           #arr$:[Lorg/apache/http/Header;
    .end local v19           #header:Lorg/apache/http/Header;
    .end local v20           #i$:I
    .end local v24           #len$:I
    :cond_3e7
    const/16 v50, 0xc8

    move/from16 v0, v44

    move/from16 v1, v50

    if-lt v0, v1, :cond_4ee

    const/16 v50, 0x12c

    move/from16 v0, v44

    move/from16 v1, v50

    if-ge v0, v1, :cond_4ee

    if-eqz v16, :cond_4ee

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/MplayHandler;->parseContentType(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    move-object/from16 v50, v0

    if-eqz v50, :cond_421

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mSupportedInternetMediaTypes:Ljava/util/TreeSet;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_42d

    .line 383
    :cond_421
    new-instance v50, Lcom/google/android/music/dl/UnsupportedAudioTypeException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    move-object/from16 v51, v0

    invoke-direct/range {v50 .. v51}, Lcom/google/android/music/dl/UnsupportedAudioTypeException;-><init>(Ljava/lang/String;)V

    throw v50

    .line 386
    :cond_42d
    sget-boolean v50, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v50, :cond_44f

    .line 387
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Received valid response for playback with content type: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mContentType:Ljava/lang/String;

    move-object/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_44f
    const-string v50, "Content-Length"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v25

    .line 392
    .local v25, lengthHeaders:[Lorg/apache/http/Header;
    if-eqz v25, :cond_462

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v50, v0

    if-nez v50, :cond_46c

    .line 393
    :cond_462
    const-string v50, "X-Estimated-Content-Length"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v25

    .line 395
    :cond_46c
    if-eqz v25, :cond_4e2

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v50, v0

    if-eqz v50, :cond_4e2

    .line 396
    const/16 v50, 0x0

    aget-object v50, v25, v50

    invoke-interface/range {v50 .. v50}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v49

    .line 398
    .local v49, value:Ljava/lang/String;
    :try_start_47d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v50, v0

    invoke-static/range {v49 .. v49}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v51

    invoke-virtual/range {v50 .. v52}, Lcom/google/android/music/dl/DownloadOrder;->setTranscodedLength(J)V
    :try_end_48a
    .catch Ljava/lang/NumberFormatException; {:try_start_47d .. :try_end_48a} :catch_4c0

    .line 406
    .end local v49           #value:Ljava/lang/String;
    :cond_48a
    :goto_48a
    new-instance v22, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;

    invoke-static/range {v16 .. v16}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v50

    move-object/from16 v0, v22

    move-object/from16 v1, v50

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/AbortRequestOnCloseInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/AbortableHttpRequest;)V

    .line 409
    .local v22, in:Ljava/io/InputStream;
    const-string v50, "X-ID3-Footer-Attached"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v21

    .line 410
    .local v21, id3Footer:[Lorg/apache/http/Header;
    if-eqz v21, :cond_4bf

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v50, v0

    if-eqz v50, :cond_4bf

    .line 411
    new-instance v50, Lcom/google/android/music/dl/ID3v1FooterInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mCurrentOrder:Lcom/google/android/music/dl/DownloadOrder;

    move-object/from16 v51, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v22

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/ID3v1FooterInputStream;-><init>(Ljava/io/InputStream;Lcom/google/android/music/dl/DownloadOrder;)V

    move-object/from16 v22, v50

    .line 413
    .end local v22           #in:Ljava/io/InputStream;
    :cond_4bf
    return-object v22

    .line 399
    .end local v21           #id3Footer:[Lorg/apache/http/Header;
    .restart local v49       #value:Ljava/lang/String;
    :catch_4c0
    move-exception v14

    .line 400
    .local v14, e:Ljava/lang/NumberFormatException;
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Server sent invalid content length: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48a

    .line 402
    .end local v14           #e:Ljava/lang/NumberFormatException;
    .end local v49           #value:Ljava/lang/String;
    :cond_4e2
    sget-boolean v50, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v50, :cond_48a

    .line 403
    const-string v50, "MusicStreaming"

    const-string v51, "No Content-Length or X-Estimated-Content-Length provided"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48a

    .line 417
    .end local v25           #lengthHeaders:[Lorg/apache/http/Header;
    :cond_4ee
    const/16 v50, 0x12e

    move/from16 v0, v44

    move/from16 v1, v50

    if-ne v0, v1, :cond_5e1

    .line 421
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 422
    const-string v50, "Location"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v26

    .line 423
    .local v26, location:Lorg/apache/http/Header;
    if-nez v26, :cond_520

    .line 424
    const-string v50, "MusicStreaming"

    const/16 v51, 0x3

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v50

    if-eqz v50, :cond_516

    .line 425
    const-string v50, "MusicStreaming"

    const-string v51, "Redirect requested but no Location specified."

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v16           #entity:Lorg/apache/http/HttpEntity;
    .end local v18           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v26           #location:Lorg/apache/http/Header;
    .end local v31           #params:Lorg/apache/http/params/HttpParams;
    .end local v45           #statusLine:Lorg/apache/http/StatusLine;
    :cond_516
    if-nez v34, :cond_78c

    .line 522
    new-instance v50, Ljava/io/IOException;

    const-string v51, "Unable to download stream due to too many redirects."

    invoke-direct/range {v50 .. v51}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v50

    .line 429
    .restart local v16       #entity:Lorg/apache/http/HttpEntity;
    .restart local v18       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v26       #location:Lorg/apache/http/Header;
    .restart local v31       #params:Lorg/apache/http/params/HttpParams;
    .restart local v45       #statusLine:Lorg/apache/http/StatusLine;
    :cond_520
    const-string v50, "MusicStreaming"

    const/16 v51, 0x3

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v50

    if-eqz v50, :cond_546

    .line 430
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Following redirect to "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_546
    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v47

    .line 434
    add-int/lit8 v34, v34, -0x1

    .line 437
    const-string v50, "Set-Cookie"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v10

    .line 438
    .local v10, cookieHeaders:[Lorg/apache/http/Header;
    move-object v4, v10

    .restart local v4       #arr$:[Lorg/apache/http/Header;
    array-length v0, v4

    move/from16 v24, v0

    .restart local v24       #len$:I
    const/16 v20, 0x0

    .restart local v20       #i$:I
    :goto_55c
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_13d

    aget-object v9, v4, v20

    .line 439
    .local v9, cookie:Lorg/apache/http/Header;
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v43

    .line 440
    .local v43, setCookieString:Ljava/lang/String;
    if-eqz v43, :cond_570

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v50

    if-nez v50, :cond_573

    .line 438
    :cond_570
    :goto_570
    add-int/lit8 v20, v20, 0x1

    goto :goto_55c

    .line 443
    :cond_573
    const/16 v50, 0x3d

    move-object/from16 v0, v43

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    .line 444
    .local v29, nameLength:I
    const/16 v50, 0x3b

    move-object/from16 v0, v43

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 445
    .local v15, endOfCookieIndex:I
    const/16 v50, -0x1

    move/from16 v0, v29

    move/from16 v1, v50

    if-eq v0, v1, :cond_595

    const/16 v50, -0x1

    move/from16 v0, v50

    if-ne v15, v0, :cond_5b3

    .line 446
    :cond_595
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Invalid cookie format: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13d

    .line 449
    :cond_5b3
    const/16 v50, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v50

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 450
    .local v11, cookieName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mPassthroughCookies:Ljava/util/TreeSet;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v0, v11}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_570

    .line 451
    const/16 v50, 0x0

    add-int/lit8 v51, v15, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_570

    .line 454
    .end local v4           #arr$:[Lorg/apache/http/Header;
    .end local v9           #cookie:Lorg/apache/http/Header;
    .end local v10           #cookieHeaders:[Lorg/apache/http/Header;
    .end local v11           #cookieName:Ljava/lang/String;
    .end local v15           #endOfCookieIndex:I
    .end local v20           #i$:I
    .end local v24           #len$:I
    .end local v26           #location:Lorg/apache/http/Header;
    .end local v29           #nameLength:I
    .end local v43           #setCookieString:Ljava/lang/String;
    :cond_5e1
    const/16 v50, 0x191

    move/from16 v0, v44

    move/from16 v1, v50

    if-ne v0, v1, :cond_617

    .line 455
    const-string v28, "Received 401 Unauthorized from server."

    .line 456
    .local v28, msg:Ljava/lang/String;
    sget-boolean v50, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v50, :cond_5f8

    .line 457
    const-string v50, "MusicStreaming"

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_5f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mMusicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/MplayHandler;->mAccount:Landroid/accounts/Account;

    move-object/from16 v51, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v5}, Lcom/google/android/music/sync/google/MusicAuthInfo;->invalidateAuthToken(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 460
    new-instance v50, Lorg/apache/http/client/HttpResponseException;

    move-object/from16 v0, v50

    move/from16 v1, v44

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v50

    .line 461
    .end local v28           #msg:Ljava/lang/String;
    :cond_617
    const/16 v50, 0x193

    move/from16 v0, v44

    move/from16 v1, v50

    if-ne v0, v1, :cond_699

    .line 462
    const-string v50, "X-Rejected-Reason"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v37

    .line 463
    .local v37, rejectionReasonHeader:Lorg/apache/http/Header;
    if-eqz v37, :cond_68b

    .line 464
    invoke-interface/range {v37 .. v37}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v35

    .line 465
    .local v35, rejectionReason:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v50

    if-nez v50, :cond_68b

    .line 466
    const/16 v36, 0x0

    .line 467
    .local v36, rejectionReasonEnum:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    const-string v50, "DEVICE_NOT_AUTHORIZED"

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_651

    .line 468
    sget-object v36, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->DEVICE_NOT_AUTHORIZED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    .line 475
    :cond_645
    :goto_645
    if-eqz v36, :cond_66f

    .line 478
    new-instance v50, Lcom/google/android/music/dl/ServerRejectionException;

    move-object/from16 v0, v50

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/google/android/music/dl/ServerRejectionException;-><init>(Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;)V

    throw v50

    .line 469
    :cond_651
    const-string v50, "ANOTHER_STREAM_BEING_PLAYED"

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_660

    .line 470
    sget-object v36, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ANOTHER_STREAM_BEING_PLAYED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    goto :goto_645

    .line 471
    :cond_660
    const-string v50, "STREAM_RATE_LIMIT_REACHED"

    move-object/from16 v0, v50

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_645

    .line 472
    sget-object v36, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->STREAM_RATE_LIMIT_REACHED:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    goto :goto_645

    .line 480
    :cond_66f
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Server returned an unknown rejection reason: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    .end local v35           #rejectionReason:Ljava/lang/String;
    .end local v36           #rejectionReasonEnum:Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;
    :cond_68b
    new-instance v50, Lorg/apache/http/client/HttpResponseException;

    const-string v51, "Unable to stream due to 403 error"

    move-object/from16 v0, v50

    move/from16 v1, v44

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v50

    .line 487
    .end local v37           #rejectionReasonHeader:Lorg/apache/http/Header;
    :cond_699
    const/16 v50, 0x194

    move/from16 v0, v44

    move/from16 v1, v50

    if-ne v0, v1, :cond_6bc

    .line 488
    const-string v28, "Unable to download stream due to 404 (file not found) error"

    .line 489
    .restart local v28       #msg:Ljava/lang/String;
    sget-boolean v50, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v50, :cond_6b0

    .line 490
    const-string v50, "MusicStreaming"

    move-object/from16 v0, v50

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_6b0
    new-instance v50, Lorg/apache/http/client/HttpResponseException;

    move-object/from16 v0, v50

    move/from16 v1, v44

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v50

    .line 493
    .end local v28           #msg:Ljava/lang/String;
    :cond_6bc
    const/16 v50, 0x1f7

    move/from16 v0, v44

    move/from16 v1, v50

    if-ne v0, v1, :cond_749

    .line 494
    const-string v50, "Retry-After"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v50

    if-eqz v50, :cond_740

    .line 496
    :try_start_6d0
    const-string v50, "Retry-After"

    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v39

    .line 498
    .local v39, retryAfterInSeconds:J
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Server said to retry after "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, " seconds"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v50, Lcom/google/android/music/dl/ServiceUnavailableException;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Unable to download stream due to 503 (Service Unavailable) error.  Unavailable for "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, " seconds."

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move-wide/from16 v1, v39

    move-object/from16 v3, v51

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/ServiceUnavailableException;-><init>(JLjava/lang/String;)V

    throw v50
    :try_end_731
    .catch Ljava/lang/NumberFormatException; {:try_start_6d0 .. :try_end_731} :catch_731

    .line 503
    .end local v39           #retryAfterInSeconds:J
    :catch_731
    move-exception v30

    .line 507
    .local v30, ne:Ljava/lang/NumberFormatException;
    new-instance v50, Lorg/apache/http/client/HttpResponseException;

    const-string v51, "Unable to download stream due to 503 error."

    move-object/from16 v0, v50

    move/from16 v1, v44

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v50

    .line 511
    .end local v30           #ne:Ljava/lang/NumberFormatException;
    :cond_740
    const-string v50, "MusicStreaming"

    const-string v51, "Received 503 with no Retry-After header"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13d

    .line 514
    :cond_749
    sget-boolean v50, Lcom/google/android/music/dl/MplayHandler;->LOGV:Z

    if-eqz v50, :cond_769

    .line 515
    const-string v50, "MusicStreaming"

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Unable to download stream due to HTTP error "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_769
    new-instance v50, Lorg/apache/http/client/HttpResponseException;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "Unable to download stream due to HTTP error "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v50

    move/from16 v1, v44

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v50

    .line 527
    .end local v16           #entity:Lorg/apache/http/HttpEntity;
    .end local v18           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v31           #params:Lorg/apache/http/params/HttpParams;
    .end local v45           #statusLine:Lorg/apache/http/StatusLine;
    :cond_78c
    new-instance v50, Ljava/io/IOException;

    const-string v51, "Unable to retreive stream"

    invoke-direct/range {v50 .. v51}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v50
.end method

.method public getFileExtension()Ljava/lang/String;
    .registers 3

    .prologue
    .line 543
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
    .line 171
    invoke-virtual {p0}, Lcom/google/android/music/dl/MplayHandler;->getDownloadStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/dl/MplayHandler;->mInputStream:Ljava/io/InputStream;

    .line 172
    return-void
.end method

.method public setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V
    .registers 8
    .parameter "order"
    .parameter "storeService"

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Lcom/google/android/music/dl/DownloadHandler;->setOrder(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/store/IStoreService;)V

    .line 157
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v2

    if-nez v2, :cond_e

    .line 167
    :goto_d
    return-void

    .line 162
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getSourceAccount()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/google/android/music/store/IStoreService;->getAccountByHash(I)[Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, account:[Ljava/lang/String;
    new-instance v2, Landroid/accounts/Account;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/music/dl/MplayHandler;->mAccount:Landroid/accounts/Account;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_23} :catch_24

    goto :goto_d

    .line 164
    .end local v0           #account:[Ljava/lang/String;
    :catch_24
    move-exception v1

    .line 165
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "MusicStreaming"

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

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
