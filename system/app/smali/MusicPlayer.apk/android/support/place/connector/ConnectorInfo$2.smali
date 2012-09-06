.class final Landroid/support/place/connector/ConnectorInfo$2;
.super Ljava/lang/Object;
.source "ConnectorInfo.java"

# interfaces
.implements Landroid/support/place/rpc/Flattenable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/ConnectorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/place/rpc/Flattenable$Creator",
        "<",
        "Landroid/support/place/connector/ConnectorInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/connector/ConnectorInfo;
    .registers 3
    .parameter "in"

    .prologue
    .line 119
    new-instance v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-direct {v0, p1}, Landroid/support/place/connector/ConnectorInfo;-><init>(Landroid/support/place/rpc/RpcData;)V

    return-object v0
.end method

.method public bridge synthetic createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;
    .registers 3
    .parameter "x0"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/support/place/connector/ConnectorInfo$2;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/connector/ConnectorInfo;

    move-result-object v0

    return-object v0
.end method
