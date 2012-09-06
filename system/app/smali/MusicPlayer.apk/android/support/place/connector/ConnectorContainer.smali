.class public Landroid/support/place/connector/ConnectorContainer;
.super Landroid/app/Service;
.source "ConnectorContainer.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBaseCalled:Z

.field mBrokerConnection:Landroid/support/place/connector/BrokerConnection;

.field mConnectionListener:Landroid/support/place/connector/BrokerConnection$Listener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const-string v0, "aah.ConnectorContainer"

    iput-object v0, p0, Landroid/support/place/connector/ConnectorContainer;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/support/place/connector/BrokerConnection;

    invoke-direct {v0, p0, p0}, Landroid/support/place/connector/BrokerConnection;-><init>(Landroid/content/Context;Landroid/support/place/connector/ConnectorContainer;)V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBrokerConnection:Landroid/support/place/connector/BrokerConnection;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorContainer;->mHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Landroid/support/place/connector/ConnectorContainer$1;

    invoke-direct {v0, p0}, Landroid/support/place/connector/ConnectorContainer$1;-><init>(Landroid/support/place/connector/ConnectorContainer;)V

    iput-object v0, p0, Landroid/support/place/connector/ConnectorContainer;->mConnectionListener:Landroid/support/place/connector/BrokerConnection$Listener;

    return-void
.end method

.method static synthetic access$002(Landroid/support/place/connector/ConnectorContainer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z

    return p1
.end method


# virtual methods
.method enforceBaseCalled(Ljava/lang/String;)V
    .registers 5
    .parameter "method"

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z

    if-nez v0, :cond_29

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call super."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_29
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBrokerConnection:Landroid/support/place/connector/BrokerConnection;

    iget-object v0, v0, Landroid/support/place/connector/BrokerConnection;->mBrokerConnection:Landroid/support/place/connector/IBrokerConnection$Stub;

    return-object v0
.end method

.method public onBrokerConnected(Landroid/support/place/connector/Broker;)V
    .registers 3
    .parameter "broker"

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z

    .line 104
    return-void
.end method

.method public onBrokerDisconnected()V
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z

    .line 108
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBrokerConnection:Landroid/support/place/connector/BrokerConnection;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorContainer;->mConnectionListener:Landroid/support/place/connector/BrokerConnection$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/BrokerConnection;->connect(Landroid/support/place/connector/BrokerConnection$Listener;)Z

    .line 89
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 94
    iget-object v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBrokerConnection:Landroid/support/place/connector/BrokerConnection;

    iget-object v1, p0, Landroid/support/place/connector/ConnectorContainer;->mConnectionListener:Landroid/support/place/connector/BrokerConnection$Listener;

    invoke-virtual {v0, v1}, Landroid/support/place/connector/BrokerConnection;->disconnect(Landroid/support/place/connector/BrokerConnection$Listener;)V

    .line 95
    return-void
.end method

.method public onMasterChanged(Landroid/support/place/rpc/EndpointInfo;)V
    .registers 3
    .parameter "master"

    .prologue
    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z

    .line 120
    return-void
.end method

.method public onPlaceConnected(Landroid/support/place/connector/PlaceInfo;)V
    .registers 3
    .parameter "place"

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z

    .line 112
    return-void
.end method

.method public onPlaceDisconnected()V
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z

    .line 116
    return-void
.end method

.method public onPlaceNameChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "newName"

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/place/connector/ConnectorContainer;->mBaseCalled:Z

    .line 124
    return-void
.end method
