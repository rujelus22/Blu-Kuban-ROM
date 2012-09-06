.class public Lcom/google/android/music/athome/TokenRetriever;
.super Ljava/lang/Object;
.source "TokenRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/TokenRetriever$Response;,
        Lcom/google/android/music/athome/TokenRetriever$Request;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private final mShareMusicRequest:Lcom/google/android/music/utils/MusicRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const-string v0, "aah.Music"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/athome/TokenRetriever;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 4
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/android/music/athome/TokenRetriever;->mContext:Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/google/android/music/athome/TokenRetriever;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/utils/MusicRequest;->getSharedHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/TokenRetriever;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 114
    new-instance v0, Lcom/google/android/music/utils/MusicRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/music/utils/MusicRequest;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/athome/TokenRetriever;->mShareMusicRequest:Lcom/google/android/music/utils/MusicRequest;

    .line 115
    return-void
.end method


# virtual methods
.method public getShareToken(Ljava/lang/String;Ljava/util/List;)Landroid/util/Pair;
    .registers 17
    .parameter "atHomeDeviceAccount"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    .local p2, remoteTrackIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 130
    .local v8, startTime:J
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v10, "https://android.clients.google.com/music/pshare"

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 132
    .local v4, request:Lorg/apache/http/client/methods/HttpPost;
    invoke-static/range {p1 .. p2}, Lcom/google/android/music/athome/TokenRetriever$Request;->serialize(Ljava/lang/String;Ljava/util/List;)[B

    move-result-object v1

    .line 133
    .local v1, json:[B
    new-instance v2, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v2, v1, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 135
    .local v2, jsonStr:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lcom/google/android/music/utils/NameValuePairImpl;

    const-string v11, "json"

    invoke-direct {v10, v11, v2}, Lcom/google/android/music/utils/NameValuePairImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v10, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 139
    iget-object v10, p0, Lcom/google/android/music/athome/TokenRetriever;->mShareMusicRequest:Lcom/google/android/music/utils/MusicRequest;

    iget-object v11, p0, Lcom/google/android/music/athome/TokenRetriever;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v10, v4, v11}, Lcom/google/android/music/utils/MusicRequest;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/google/android/common/http/GoogleHttpClient;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 142
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 143
    .local v0, entity:Lorg/apache/http/HttpEntity;
    const/4 v6, 0x0

    .line 145
    .local v6, responseData:[B
    :try_start_3b
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    const v11, 0xc800

    invoke-static {v10, v11}, Lcom/google/android/music/utils/IOUtils;->readSmallStream(Ljava/io/InputStream;I)[B

    move-result-object v6

    .line 146
    invoke-static {v6}, Lcom/google/android/music/athome/TokenRetriever$Response;->parse([B)Lcom/google/android/music/athome/TokenRetriever$Response;

    move-result-object v7

    .line 147
    .local v7, responseObj:Lcom/google/android/music/athome/TokenRetriever$Response;
    iget-object v10, v7, Lcom/google/android/music/athome/TokenRetriever$Response;->mToken:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 148
    const-string v10, "aah.Music"

    const-string v11, "Empty token from the server"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Empty token from the server"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_61

    .line 154
    .end local v7           #responseObj:Lcom/google/android/music/athome/TokenRetriever$Response;
    :catchall_61
    move-exception v10

    if-nez v6, :cond_67

    .line 155
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_67
    throw v10

    .line 151
    .restart local v7       #responseObj:Lcom/google/android/music/athome/TokenRetriever$Response;
    :cond_68
    :try_start_68
    new-instance v10, Landroid/util/Pair;

    iget-object v11, v7, Lcom/google/android/music/athome/TokenRetriever$Response;->mToken:Ljava/lang/String;

    iget v12, v7, Lcom/google/android/music/athome/TokenRetriever$Response;->mTtlInSeconds:I

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    add-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_61

    .line 154
    if-nez v6, :cond_7e

    .line 155
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_7e
    return-object v10
.end method
