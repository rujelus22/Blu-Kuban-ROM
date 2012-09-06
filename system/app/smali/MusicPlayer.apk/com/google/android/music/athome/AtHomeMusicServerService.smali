.class public Lcom/google/android/music/athome/AtHomeMusicServerService;
.super Landroid/support/place/connector/ConnectorContainer;
.source "AtHomeMusicServerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final LOGV:Z


# instance fields
.field private mBroker:Landroid/support/place/connector/Broker;

.field private mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeUtils;->LOGV:Z

    sput-boolean v0, Lcom/google/android/music/athome/AtHomeMusicServerService;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/place/connector/ConnectorContainer;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    return-void
.end method

.method private unregisterConnectorQuietly(Landroid/support/place/connector/Endpoint;)V
    .registers 6
    .parameter "point"

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v1, p1}, Landroid/support/place/connector/Broker;->unregisterConnector(Landroid/support/place/connector/Endpoint;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 120
    :goto_5
    return-void

    .line 117
    :catch_6
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister end point: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/support/place/connector/ConnectorContainer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    .line 147
    .local v0, server:Lcom/google/android/music/athome/AtHomeMusicServer;
    if-nez v0, :cond_d

    .line 148
    const-string v1, "No server"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    :goto_c
    return-void

    .line 150
    :cond_d
    invoke-virtual {v0, p2}, Lcom/google/android/music/athome/AtHomeMusicServer;->dump(Ljava/io/PrintWriter;)V

    goto :goto_c
.end method

.method public onBrokerConnected(Landroid/support/place/connector/Broker;)V
    .registers 2
    .parameter "broker"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/place/connector/ConnectorContainer;->onBrokerConnected(Landroid/support/place/connector/Broker;)V

    .line 56
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mBroker:Landroid/support/place/connector/Broker;

    .line 57
    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/support/place/connector/ConnectorContainer;->onCreate()V

    .line 44
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 45
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 50
    invoke-super {p0}, Landroid/support/place/connector/ConnectorContainer;->onDestroy()V

    .line 51
    return-void
.end method

.method public onMasterChanged(Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter "master"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/place/connector/ConnectorContainer;->onMasterChanged(Landroid/support/place/rpc/EndpointInfo;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->onMasterChanged()V

    .line 126
    return-void
.end method

.method public onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/place/connector/ConnectorContainer;->onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V

    .line 63
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to place "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    if-eqz v0, :cond_2d

    .line 67
    const-string v0, "aah.Music"

    const-string v1, "mServer != null"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "mServer != null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_2d
    new-instance v0, Landroid/support/place/connector/ConnectorInfo;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v1}, Landroid/support/place/connector/Broker;->newEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    const-class v2, Lcom/google/android/music/athome/api/MusicConnector;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/place/connector/ConnectorInfo;-><init>(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/google/android/music/athome/AtHomeMusicServer;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mBroker:Landroid/support/place/connector/Broker;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/google/android/music/athome/AtHomeMusicServer;-><init>(Landroid/support/place/connector/ConnectorContainer;Landroid/support/place/connector/Broker;Landroid/support/place/connector/PlaceInfo;Landroid/support/place/connector/ConnectorInfo;)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    .line 74
    const/4 v1, 0x0

    .line 79
    :try_start_48
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mBroker:Landroid/support/place/connector/Broker;

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-virtual {v2, v3, v0}, Landroid/support/place/connector/Broker;->registerConnector(Landroid/support/place/connector/Endpoint;Landroid/support/place/connector/ConnectorInfo;)V

    .line 80
    const/4 v1, 0x1

    .line 82
    new-instance v0, Landroid/support/place/connector/ConnectorInfo;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mBroker:Landroid/support/place/connector/Broker;

    invoke-virtual {v2}, Landroid/support/place/connector/Broker;->newEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v2

    const-class v3, Landroid/support/place/music/TgsTransmitter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/support/place/connector/ConnectorInfo;-><init>(Landroid/support/place/rpc/EndpointInfo;Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mBroker:Landroid/support/place/connector/Broker;

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomeMusicServer;->getTgsTransmitter()Landroid/support/place/connector/Connector;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/place/connector/Broker;->registerConnector(Landroid/support/place/connector/Endpoint;Landroid/support/place/connector/ConnectorInfo;)V
    :try_end_6c
    .catchall {:try_start_48 .. :try_end_6c} :catchall_6d

    .line 95
    return-void

    .line 87
    :catchall_6d
    move-exception v0

    .line 88
    const-string v2, "aah.Music"

    const-string v3, "Error when registering connectors"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz v1, :cond_7c

    .line 91
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-direct {p0, v1}, Lcom/google/android/music/athome/AtHomeMusicServerService;->unregisterConnectorQuietly(Landroid/support/place/connector/Endpoint;)V

    :cond_7c
    throw v0
.end method

.method public onPlaceDisconnected()V
    .registers 3

    .prologue
    .line 100
    const-string v0, "aah.Music"

    const-string v1, "Disconnected from place"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    if-nez v0, :cond_16

    .line 103
    const-string v0, "aah.Music"

    const-string v1, "onPlaceDisconnected() called without  previous onPlaceConnected() or after onPlaceConnected() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_12
    invoke-super {p0}, Landroid/support/place/connector/ConnectorContainer;->onPlaceDisconnected()V

    .line 112
    return-void

    .line 106
    :cond_16
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeMusicServerService;->unregisterConnectorQuietly(Landroid/support/place/connector/Endpoint;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->getTgsTransmitter()Landroid/support/place/connector/Connector;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/athome/AtHomeMusicServerService;->unregisterConnectorQuietly(Landroid/support/place/connector/Endpoint;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServerService;->mServer:Lcom/google/android/music/athome/AtHomeMusicServer;

    goto :goto_12
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 129
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_b

    .line 130
    const-string v0, "aah.Music"

    const-string v1, "MusicPlaybackService is null in onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_b
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeMusicServerService;->LOGV:Z

    if-eqz v0, :cond_16

    .line 135
    const-string v0, "aah.Music"

    const-string v1, "Connected to MusicPlaybackService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_16
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 140
    const-string v0, "aah.Music"

    const-string v1, "Disconnected from MusicPlaybackService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method
