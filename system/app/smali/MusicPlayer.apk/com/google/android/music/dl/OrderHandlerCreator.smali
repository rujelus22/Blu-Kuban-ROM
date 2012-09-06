.class public Lcom/google/android/music/dl/OrderHandlerCreator;
.super Ljava/lang/Object;
.source "OrderHandlerCreator.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 7
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 26
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 28
    iget-object v1, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v2, "MusicStreaming"

    invoke-static {}, Lcom/google/android/music/DebugUtils;->isAutoLogAll()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    :goto_22
    invoke-virtual {v1, v2, v0}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 32
    return-void

    .line 28
    :cond_26
    const/4 v0, 0x2

    goto :goto_22
.end method


# virtual methods
.method public createHandler(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 6
    .parameter "order"

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/music/dl/MplayHandler;

    iget-object v1, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v3, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/MplayHandler;-><init>(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/common/http/GoogleHttpClient;)V

    invoke-virtual {p1, v0}, Lcom/google/android/music/dl/DownloadOrder;->setHandler(Lcom/google/android/music/dl/DownloadHandler;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/music/dl/OrderHandlerCreator;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 36
    return-void
.end method
