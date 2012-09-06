.class public Landroid/support/place/music/TgsService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FIELD_CONNECTOR:Ljava/lang/String; = "connector"

.field private static final FIELD_DEVICE_NAME:Ljava/lang/String; = "deviceName"


# instance fields
.field private final mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

.field private final mDeviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter

    .prologue
    .line 21
    const-string v0, "deviceName"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/support/place/connector/ConnectorInfo;

    const-string v2, "connector"

    invoke-virtual {p1, v2}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/place/connector/ConnectorInfo;-><init>(Landroid/support/place/rpc/RpcData;)V

    invoke-direct {p0, v0, v1}, Landroid/support/place/music/TgsService;-><init>(Ljava/lang/String;Landroid/support/place/connector/ConnectorInfo;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/place/connector/ConnectorInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Landroid/support/place/music/TgsService;->mDeviceName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Landroid/support/place/music/TgsService;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    .line 18
    return-void
.end method


# virtual methods
.method public getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/place/music/TgsService;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/place/music/TgsService;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 34
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 35
    invoke-virtual {p0, v0}, Landroid/support/place/music/TgsService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TgsService("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 25
    const-string v0, "deviceName"

    iget-object v1, p0, Landroid/support/place/music/TgsService;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 28
    iget-object v1, p0, Landroid/support/place/music/TgsService;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1, v0}, Landroid/support/place/connector/ConnectorInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 29
    const-string v1, "connector"

    invoke-virtual {p1, v1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 30
    return-void
.end method
