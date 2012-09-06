.class Landroid/support/place/connector/coordinator/Coordinator$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field private _listener:Landroid/support/place/connector/coordinator/Coordinator$Listener;

.field final synthetic this$0:Landroid/support/place/connector/coordinator/Coordinator;


# direct methods
.method public constructor <init>(Landroid/support/place/connector/coordinator/Coordinator;Landroid/support/place/connector/Broker;Landroid/support/place/connector/coordinator/Coordinator$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Landroid/support/place/connector/coordinator/Coordinator$Presenter;->this$0:Landroid/support/place/connector/coordinator/Coordinator;

    .line 177
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 178
    iput-object p3, p0, Landroid/support/place/connector/coordinator/Coordinator$Presenter;->_listener:Landroid/support/place/connector/coordinator/Coordinator$Listener;

    .line 179
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 183
    const-string v1, "onPlaceNameChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 186
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Landroid/support/place/connector/coordinator/Coordinator$Presenter;->_listener:Landroid/support/place/connector/coordinator/Coordinator$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/connector/coordinator/Coordinator$Listener;->onPlaceNameChanged(Ljava/lang/String;Landroid/support/place/rpc/RpcContext;)V

    .line 192
    const/4 v0, 0x0

    :goto_19
    return-object v0

    .line 190
    :cond_1a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_19
.end method
