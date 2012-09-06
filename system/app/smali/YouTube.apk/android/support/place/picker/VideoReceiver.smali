.class public Landroid/support/place/picker/VideoReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/Flattenable;


# static fields
.field private static final FIELD_CONNECTOR:Ljava/lang/String; = "connector"

.field private static final FIELD_NAME:Ljava/lang/String; = "name"

.field private static final FIELD_ON_PHONE:Ljava/lang/String; = "onPhone"

.field private static final FIELD_PLACE:Ljava/lang/String; = "place"

.field public static final RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;


# instance fields
.field private mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

.field private mName:Ljava/lang/String;

.field private mOnPhone:Z

.field private mPlace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Landroid/support/place/picker/VideoReceiver$1;

    invoke-direct {v0}, Landroid/support/place/picker/VideoReceiver$1;-><init>()V

    sput-object v0, Landroid/support/place/picker/VideoReceiver;->RPC_CREATOR:Landroid/support/place/rpc/Flattenable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mName:Ljava/lang/String;

    .line 30
    const-string v0, "place"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 31
    const-string v0, "place"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mPlace:Ljava/lang/String;

    .line 33
    :cond_1b
    new-instance v0, Landroid/support/place/connector/ConnectorInfo;

    const-string v1, "connector"

    invoke-virtual {p1, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/place/connector/ConnectorInfo;-><init>(Landroid/support/place/rpc/RpcData;)V

    iput-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    .line 34
    const-string v0, "onPhone"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/place/picker/VideoReceiver;->mOnPhone:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/place/connector/ConnectorInfo;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroid/support/place/picker/VideoReceiver;->mName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Landroid/support/place/picker/VideoReceiver;->mPlace:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Landroid/support/place/picker/VideoReceiver;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    .line 25
    iput-boolean p4, p0, Landroid/support/place/picker/VideoReceiver;->mOnPhone:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getConnectorInfo()Landroid/support/place/connector/ConnectorInfo;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    if-nez v0, :cond_e

    .line 79
    :cond_c
    const/4 v0, 0x0

    .line 81
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOnPhone()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/support/place/picker/VideoReceiver;->mOnPhone:Z

    return v0
.end method

.method public getPlace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mPlace:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 51
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 52
    invoke-virtual {p0, v0}, Landroid/support/place/picker/VideoReceiver;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoReceiver("

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
    .line 39
    const-string v0, "name"

    iget-object v1, p0, Landroid/support/place/picker/VideoReceiver;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "place"

    iget-object v1, p0, Landroid/support/place/picker/VideoReceiver;->mPlace:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Landroid/support/place/picker/VideoReceiver;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    if-eqz v0, :cond_21

    .line 42
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 43
    iget-object v1, p0, Landroid/support/place/picker/VideoReceiver;->mConnectorInfo:Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v1, v0}, Landroid/support/place/connector/ConnectorInfo;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 44
    const-string v1, "connector"

    invoke-virtual {p1, v1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    .line 46
    :cond_21
    const-string v0, "onPhone"

    iget-boolean v1, p0, Landroid/support/place/picker/VideoReceiver;->mOnPhone:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/place/rpc/RpcData;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method
