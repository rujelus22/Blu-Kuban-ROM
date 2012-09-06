.class final Lcom/android/athome/picker/b/e;
.super Landroid/support/place/music/TungstenGroupingService$Listener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;)V
    .registers 2
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Landroid/support/place/music/TungstenGroupingService$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/support/place/rpc/RpcData;)V
    .registers 4
    .parameter

    .prologue
    .line 894
    const-string v0, "groupState"

    invoke-virtual {p1, v0}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 895
    new-instance v1, Landroid/support/place/music/TgsState;

    invoke-direct {v1, v0}, Landroid/support/place/music/TgsState;-><init>(Landroid/support/place/rpc/RpcData;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/athome/picker/b/e;->onStateChanged(Landroid/support/place/music/TgsState;Landroid/support/place/rpc/RpcContext;)V

    .line 896
    return-void
.end method

.method public final onDisconnected()V
    .registers 3

    .prologue
    .line 900
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "TGS listener onDisconnected; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->o(Lcom/android/athome/picker/b/a;)Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->o(Lcom/android/athome/picker/b/a;)Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->m(Lcom/android/athome/picker/b/a;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 903
    iget-object v0, p0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->m(Lcom/android/athome/picker/b/a;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/place/music/TungstenGroupingService;->startListening(Landroid/support/place/music/TungstenGroupingService$Listener;)V

    .line 905
    :cond_2c
    return-void
.end method

.method public final onStateChanged(Landroid/support/place/music/TgsState;Landroid/support/place/rpc/RpcContext;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->s(Lcom/android/athome/picker/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/athome/picker/b/y;

    iget-object v2, p0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {v1, v2, p1}, Lcom/android/athome/picker/b/y;-><init>(Lcom/android/athome/picker/b/a;Landroid/support/place/music/TgsState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 910
    return-void
.end method

.method public final onVolumeChanged(Ljava/util/List;Landroid/support/place/rpc/RpcContext;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/athome/picker/b/e;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->s(Lcom/android/athome/picker/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/athome/picker/b/f;

    invoke-direct {v1, p0, p1}, Lcom/android/athome/picker/b/f;-><init>(Lcom/android/athome/picker/b/e;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 927
    return-void
.end method
