.class public Landroid/support/place/music/TgsTxService;
.super Ljava/lang/Object;
.source "TgsTxService.java"


# instance fields
.field private final mAppConnector:Landroid/support/place/connector/ConnectorInfo;

.field private final mTxConnector:Landroid/support/place/connector/ConnectorInfo;


# direct methods
.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/support/place/connector/ConnectorInfo;

    const-string v1, "txConnector"

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/place/connector/ConnectorInfo;-><init>(Landroid/support/place/rpc/RpcData;)V

    iput-object v0, p0, Landroid/support/place/music/TgsTxService;->mTxConnector:Landroid/support/place/connector/ConnectorInfo;

    .line 25
    new-instance v0, Landroid/support/place/connector/ConnectorInfo;

    const-string v1, "appConnector"

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/place/connector/ConnectorInfo;-><init>(Landroid/support/place/rpc/RpcData;)V

    iput-object v0, p0, Landroid/support/place/music/TgsTxService;->mAppConnector:Landroid/support/place/connector/ConnectorInfo;

    .line 26
    return-void
.end method


# virtual methods
.method public getAppConnector()Landroid/support/place/connector/ConnectorInfo;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Landroid/support/place/music/TgsTxService;->mAppConnector:Landroid/support/place/connector/ConnectorInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 40
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 41
    .local v0, dest:Landroid/support/place/rpc/RpcData;
    invoke-virtual {p0, v0}, Landroid/support/place/music/TgsTxService;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TgsTxService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToRpcData(Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter "dest"

    .prologue
    .line 29
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 30
    .local v1, tx:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Landroid/support/place/music/TgsTxService;->mTxConnector:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v2, v1}, Landroid/support/place/connector/ConnectorInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 31
    const-string v2, "txConnector"

    invoke-virtual {p1, v2, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 33
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 34
    .local v0, app:Landroid/support/place/rpc/RpcData;
    iget-object v2, p0, Landroid/support/place/music/TgsTxService;->mAppConnector:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v2, v0}, Landroid/support/place/connector/ConnectorInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 35
    const-string v2, "appConnector"

    invoke-virtual {p1, v2, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 36
    return-void
.end method
