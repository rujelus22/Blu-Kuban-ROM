.class Landroid/support/place/connector/Broker$1;
.super Landroid/support/place/rpc/IRpcCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/Broker;

.field final synthetic val$error:Landroid/support/place/rpc/RpcErrorHandler;

.field final synthetic val$result:Landroid/support/place/rpc/RpcResultHandler;


# direct methods
.method constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/RpcResultHandler;Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Landroid/support/place/connector/Broker$1;->this$0:Landroid/support/place/connector/Broker;

    iput-object p2, p0, Landroid/support/place/connector/Broker$1;->val$result:Landroid/support/place/rpc/RpcResultHandler;

    iput-object p3, p0, Landroid/support/place/connector/Broker$1;->val$error:Landroid/support/place/rpc/RpcErrorHandler;

    invoke-direct {p0}, Landroid/support/place/rpc/IRpcCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 4
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/place/connector/Broker$1;->val$error:Landroid/support/place/rpc/RpcErrorHandler;

    if-eqz v0, :cond_12

    .line 250
    iget-object v0, p0, Landroid/support/place/connector/Broker$1;->this$0:Landroid/support/place/connector/Broker;

    #getter for: Landroid/support/place/connector/Broker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/Broker;->access$100(Landroid/support/place/connector/Broker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/place/connector/Broker$1$2;

    invoke-direct {v1, p0, p1}, Landroid/support/place/connector/Broker$1$2;-><init>(Landroid/support/place/connector/Broker$1;Landroid/support/place/rpc/RpcError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 259
    :cond_12
    return-void
.end method

.method public onResponse([B)V
    .registers 4
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/place/connector/Broker$1;->val$result:Landroid/support/place/rpc/RpcResultHandler;

    if-eqz v0, :cond_12

    .line 237
    iget-object v0, p0, Landroid/support/place/connector/Broker$1;->this$0:Landroid/support/place/connector/Broker;

    #getter for: Landroid/support/place/connector/Broker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/connector/Broker;->access$100(Landroid/support/place/connector/Broker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/place/connector/Broker$1$1;

    invoke-direct {v1, p0, p1}, Landroid/support/place/connector/Broker$1$1;-><init>(Landroid/support/place/connector/Broker$1;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    :cond_12
    return-void
.end method
