.class Landroid/support/place/api/lighting/LightingService$Presenter;
.super Landroid/support/place/connector/EventListener;
.source "SourceFile"


# instance fields
.field private _listener:Landroid/support/place/api/lighting/LightingService$Listener;

.field final synthetic this$0:Landroid/support/place/api/lighting/LightingService;


# direct methods
.method public constructor <init>(Landroid/support/place/api/lighting/LightingService;Landroid/support/place/connector/Broker;Landroid/support/place/api/lighting/LightingService$Listener;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/place/api/lighting/LightingService$Presenter;->this$0:Landroid/support/place/api/lighting/LightingService;

    .line 164
    invoke-direct {p0, p2, p3}, Landroid/support/place/connector/EventListener;-><init>(Landroid/support/place/connector/Broker;Landroid/support/place/connector/EventListener$Listener;)V

    .line 165
    iput-object p3, p0, Landroid/support/place/api/lighting/LightingService$Presenter;->_listener:Landroid/support/place/api/lighting/LightingService$Listener;

    .line 166
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
    .line 169
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0, p2}, Landroid/support/place/rpc/RpcData;-><init>([B)V

    .line 170
    const-string v1, "onLightsChanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 173
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 174
    iget-object v1, p0, Landroid/support/place/api/lighting/LightingService$Presenter;->_listener:Landroid/support/place/api/lighting/LightingService$Listener;

    invoke-virtual {v1, v0, p3}, Landroid/support/place/api/lighting/LightingService$Listener;->onLightsChanged(Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcContext;)V

    .line 179
    const/4 v0, 0x0

    :goto_19
    return-object v0

    .line 177
    :cond_1a
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/place/connector/EventListener;->process(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)[B

    move-result-object v0

    goto :goto_19
.end method
