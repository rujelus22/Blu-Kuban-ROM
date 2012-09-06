.class Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;
.super Landroid/support/place/music/TgsTransmitter$EndpointBase;
.source "AtHomeMusicServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeMusicServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AtHomeTgsTransmitter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeMusicServer;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeMusicServer;Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "broker"
    .parameter "placeInfo"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    .line 256
    invoke-direct {p0, p2, p3, p4}, Landroid/support/place/music/TgsTransmitter$EndpointBase;-><init>(Landroid/content/Context;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;)V

    .line 257
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->setCustomHandler(Landroid/os/Handler;)V

    .line 258
    return-void
.end method


# virtual methods
.method public configureMediaPlayer(Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)Landroid/support/place/rpc/RpcData;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "admin"

    invoke-virtual {v0, p2, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfigurator:Landroid/support/place/music/MediaPlayerConfigurator;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$900(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/MediaPlayerConfigurator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/place/music/MediaPlayerConfigurator;->configure(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 316
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_2c

    .line 318
    :try_start_1d
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfigurator:Landroid/support/place/music/MediaPlayerConfigurator;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$900(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/MediaPlayerConfigurator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/place/music/MediaPlayerConfigurator;->getConfigurationString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/music/IMusicPlaybackService;->configureAtHomeTransmitter(Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2c} :catch_2d

    .line 325
    :cond_2c
    :goto_2c
    return-object v0

    .line 320
    :catch_2d
    move-exception v1

    .line 321
    const-string v1, "aah.Music"

    const-string v2, "configureAtHomeTransmitter() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public getApplicationConnector(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/connector/ConnectorInfo;
    .registers 5
    .parameter

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$700()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$1100(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/connector/ConnectorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId(Landroid/support/place/rpc/RpcContext;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$700()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$800(Lcom/google/android/music/athome/AtHomeMusicServer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPlayState()Landroid/support/place/music/TgsTransmitterPlayState;
    .registers 10

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, playing:Z
    const-string v2, ""

    .line 385
    .local v2, artist:Ljava/lang/String;
    const-string v3, ""

    .line 386
    .local v3, track:Ljava/lang/String;
    const-string v4, ""

    .line 387
    .local v4, album:Ljava/lang/String;
    const/4 v6, 0x0

    .line 389
    .local v6, albumArtUrl:Ljava/lang/String;
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_34

    .line 391
    :try_start_c
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_43

    move-result v1

    .line 395
    :goto_12
    :try_start_12
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_41

    move-result-object v2

    .line 399
    :goto_18
    :try_start_18
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_3f

    move-result-object v3

    .line 403
    :goto_1e
    :try_start_1e
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_3d

    move-result-object v4

    .line 407
    :goto_24
    :try_start_24
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$400(Lcom/google/android/music/athome/AtHomeMusicServer;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v0

    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/google/android/music/athome/AtHomePlayQueue;->getAlbumArtUrl(J)Ljava/lang/String;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_33} :catch_3b

    move-result-object v6

    .line 412
    :cond_34
    :goto_34
    new-instance v0, Landroid/support/place/music/TgsTransmitterPlayState;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/place/music/TgsTransmitterPlayState;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v0

    .line 409
    :catch_3b
    move-exception v0

    goto :goto_34

    .line 404
    :catch_3d
    move-exception v0

    goto :goto_24

    .line 400
    :catch_3f
    move-exception v0

    goto :goto_1e

    .line 396
    :catch_41
    move-exception v0

    goto :goto_18

    .line 392
    :catch_43
    move-exception v0

    goto :goto_12
.end method

.method public getPlayState(Landroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsTransmitterPlayState;
    .registers 5
    .parameter

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$700()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getPlayState()Landroid/support/place/music/TgsTransmitterPlayState;

    move-result-object v0

    return-object v0
.end method

.method public pauseTransmitter(Landroid/support/place/rpc/RpcContext;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v1

    const-class v2, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$700()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 354
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_28

    .line 356
    :try_start_16
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_25

    move-result v1

    .line 360
    :goto_1c
    if-eqz v1, :cond_24

    .line 361
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #calls: Lcom/google/android/music/athome/AtHomeMusicServer;->pause()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$1200(Lcom/google/android/music/athome/AtHomeMusicServer;)V

    .line 362
    const/4 v0, 0x1

    .line 364
    :cond_24
    return v0

    .line 357
    :catch_25
    move-exception v1

    move v1, v0

    goto :goto_1c

    :cond_28
    move v1, v0

    goto :goto_1c
.end method

.method public reset(Landroid/support/place/rpc/RpcContext;)Z
    .registers 5
    .parameter

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "admin"

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "aah.Music"

    const-string v1, "Transmitter reset is requested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_1f

    .line 288
    :try_start_1a
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->stop()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_39

    .line 294
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$802(Lcom/google/android/music/athome/AtHomeMusicServer;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfigurator:Landroid/support/place/music/MediaPlayerConfigurator;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$900(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/MediaPlayerConfigurator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/music/MediaPlayerConfigurator;->reset()V

    .line 297
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mMediaPlayerConfiguratorErrorHandler:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$1000(Lcom/google/android/music/athome/AtHomeMusicServer;)Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->reset()V

    .line 299
    const/4 v0, 0x1

    return v0

    .line 289
    :catch_39
    move-exception v0

    .line 290
    const-string v0, "aah.Music"

    const-string v1, "stop() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public resumeTransmitter(Landroid/support/place/rpc/RpcContext;)V
    .registers 5
    .parameter

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$700()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #calls: Lcom/google/android/music/athome/AtHomeMusicServer;->play()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$1300(Lcom/google/android/music/athome/AtHomeMusicServer;)V

    .line 373
    return-void
.end method

.method public setGroupId(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "admin"

    invoke-virtual {v0, p2, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$800(Lcom/google/android/music/athome/AtHomeMusicServer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 334
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This TgsTransmitter already has a group ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$800(Lcom/google/android/music/athome/AtHomeMusicServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_36
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #setter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$802(Lcom/google/android/music/athome/AtHomeMusicServer;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    return-void
.end method

.method public versionCheck(IILandroid/support/place/rpc/RpcContext;)Landroid/support/place/music/TgsVersionCheck;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 263
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeMusicServer$AtHomeTgsTransmitter;->getBroker()Landroid/support/place/connector/Broker;

    move-result-object v0

    const-class v1, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$700()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v1, v2}, Landroid/support/place/connector/Broker;->enforceCallingPermission(Landroid/support/place/rpc/RpcContext;Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    if-ge p2, v3, :cond_1c

    .line 267
    sget v0, Landroid/support/place/music/TgsVersionCheck;->CHECK_VERSION_STATUS_CLIENT_TOO_OLD:I

    .line 273
    :goto_16
    new-instance v1, Landroid/support/place/music/TgsVersionCheck;

    invoke-direct {v1, v0, v3, v3}, Landroid/support/place/music/TgsVersionCheck;-><init>(III)V

    return-object v1

    .line 268
    :cond_1c
    if-le p1, v3, :cond_21

    .line 269
    sget v0, Landroid/support/place/music/TgsVersionCheck;->CHECK_VERSION_STATUS_CLIENT_TOO_NEW:I

    goto :goto_16

    .line 271
    :cond_21
    sget v0, Landroid/support/place/music/TgsVersionCheck;->CHECK_VERSION_STATUS_OK:I

    goto :goto_16
.end method
