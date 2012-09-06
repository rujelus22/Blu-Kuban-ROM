.class Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;
.super Ljava/lang/Object;
.source "AtHomeMusicServer.java"

# interfaces
.implements Landroid/support/place/music/MediaPlayerConfigurator$ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeMusicServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerConfiguratorErrorHandler"
.end annotation


# instance fields
.field private mRetrier:Landroid/support/place/rpc/RpcRetrier;

.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeMusicServer;


# direct methods
.method private constructor <init>(Lcom/google/android/music/athome/AtHomeMusicServer;)V
    .registers 2
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/athome/AtHomeMusicServer;Lcom/google/android/music/athome/AtHomeMusicServer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->doOnConfigurationLost()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;Landroid/support/place/rpc/RpcData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->doOnConfigurationRestored(Landroid/support/place/rpc/RpcData;)V

    return-void
.end method

.method private doOnConfigurationLost()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 439
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_10

    .line 441
    :try_start_5
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->stop()V

    .line 442
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/music/IMusicPlaybackService;->configureAtHomeTransmitter(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_1c

    .line 448
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    if-eqz v1, :cond_1b

    .line 449
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    invoke-virtual {v1}, Landroid/support/place/rpc/RpcRetrier;->cancel()V

    .line 450
    iput-object v3, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    .line 452
    :cond_1b
    return-void

    .line 443
    :catch_1c
    move-exception v0

    .line 444
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "aah.Music"

    const-string v2, "stop failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method private doOnConfigurationRestored(Landroid/support/place/rpc/RpcData;)V
    .registers 9
    .parameter "newConfig"

    .prologue
    .line 466
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_13

    .line 468
    :try_start_4
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfigurator:Landroid/support/place/music/MediaPlayerConfigurator;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$900(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/MediaPlayerConfigurator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/place/music/MediaPlayerConfigurator;->getConfigurationString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/music/IMusicPlaybackService;->configureAtHomeTransmitter(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_3a

    .line 477
    :cond_13
    :goto_13
    new-instance v2, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;Landroid/support/place/rpc/RpcData;)V

    .line 485
    .local v2, task:Landroid/support/place/rpc/RpcRetrier$Task;
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    if-eqz v0, :cond_21

    .line 486
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcRetrier;->cancel()V

    .line 488
    :cond_21
    new-instance v0, Landroid/support/place/rpc/RpcRetrier;

    const-string v1, "setGroupTransmitterConfig"

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomeMusicServer;->getCustomHandler()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xa

    const/16 v5, 0x7d0

    invoke-direct/range {v0 .. v5}, Landroid/support/place/rpc/RpcRetrier;-><init>(Ljava/lang/String;Landroid/support/place/rpc/RpcRetrier$Task;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    .line 490
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcRetrier;->start()V

    .line 491
    return-void

    .line 470
    .end local v2           #task:Landroid/support/place/rpc/RpcRetrier$Task;
    :catch_3a
    move-exception v6

    .line 471
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "aah.Music"

    const-string v1, "configureAtHomeTransmitter() failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method


# virtual methods
.method public onConfigurationLost()V
    .registers 3

    .prologue
    .line 427
    const-string v0, "aah.Music"

    const-string v1, "MediaPlayerConfigurator error handler: onConfigurationLost"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getCustomHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$1;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method public onConfigurationRestored(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 455
    const-string v0, "aah.Music"

    const-string v1, "MediaPlayerConfigurator error handler: onConfigurationRegained"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getCustomHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$2;-><init>(Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;Landroid/support/place/rpc/RpcData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    if-eqz v0, :cond_c

    .line 495
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcRetrier;->cancel()V

    .line 496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->mRetrier:Landroid/support/place/rpc/RpcRetrier;

    .line 498
    :cond_c
    return-void
.end method
