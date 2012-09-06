.class public Lcom/google/android/music/utils/ProfileRequest;
.super Ljava/lang/Object;
.source "ProfileRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;,
        Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private final mMusicRequest:Lcom/google/android/music/utils/MusicRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    const-string v0, "ProfileRequest"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/utils/ProfileRequest;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 4
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/android/music/utils/ProfileRequest;->mContext:Landroid/content/Context;

    .line 144
    iget-object v0, p0, Lcom/google/android/music/utils/ProfileRequest;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/utils/MusicRequest;->getSharedHttpClient(Landroid/content/Context;)Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/utils/ProfileRequest;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 145
    new-instance v0, Lcom/google/android/music/utils/MusicRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/music/utils/MusicRequest;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V

    iput-object v0, p0, Lcom/google/android/music/utils/ProfileRequest;->mMusicRequest:Lcom/google/android/music/utils/MusicRequest;

    .line 146
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/google/android/music/utils/ProfileRequest;->LOGV:Z

    return v0
.end method


# virtual methods
.method public getProfileInfo()Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v5, "https://android.clients.google.com/music/profile"

    invoke-direct {v1, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, request:Lorg/apache/http/client/methods/HttpGet;
    iget-object v5, p0, Lcom/google/android/music/utils/ProfileRequest;->mMusicRequest:Lcom/google/android/music/utils/MusicRequest;

    iget-object v6, p0, Lcom/google/android/music/utils/ProfileRequest;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v5, v1, v6}, Lcom/google/android/music/utils/MusicRequest;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/google/android/common/http/GoogleHttpClient;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 156
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 157
    .local v0, entity:Lorg/apache/http/HttpEntity;
    const/4 v3, 0x0

    .line 159
    .local v3, responseData:[B
    :try_start_14
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x2800

    invoke-static {v5, v6}, Lcom/google/android/music/utils/IOUtils;->readSmallStream(Ljava/io/InputStream;I)[B

    move-result-object v3

    .line 160
    invoke-static {v3}, Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;->parse([B)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_28

    move-result-object v4

    .line 163
    .local v4, responseObj:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    if-nez v3, :cond_27

    .line 164
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_27
    return-object v4

    .line 163
    .end local v4           #responseObj:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    :catchall_28
    move-exception v5

    if-nez v3, :cond_2e

    .line 164
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    :cond_2e
    throw v5
.end method
