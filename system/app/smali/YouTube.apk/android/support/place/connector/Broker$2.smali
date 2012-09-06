.class Landroid/support/place/connector/Broker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/place/connector/Broker;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$error:Landroid/support/place/rpc/RpcErrorHandler;


# direct methods
.method constructor <init>(Landroid/support/place/connector/Broker;Landroid/support/place/rpc/RpcErrorHandler;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Landroid/support/place/connector/Broker$2;->this$0:Landroid/support/place/connector/Broker;

    iput-object p2, p0, Landroid/support/place/connector/Broker$2;->val$error:Landroid/support/place/rpc/RpcErrorHandler;

    iput-object p3, p0, Landroid/support/place/connector/Broker$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/place/connector/Broker$2;->val$error:Landroid/support/place/rpc/RpcErrorHandler;

    new-instance v1, Landroid/support/place/rpc/RpcError;

    const/4 v2, 0x1

    const-string v3, "sInstance.mBrokerService.sendRequest"

    iget-object v4, p0, Landroid/support/place/connector/Broker$2;->val$e:Ljava/lang/Exception;

    invoke-direct {v1, v2, v3, v4}, Landroid/support/place/rpc/RpcError;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Landroid/support/place/rpc/RpcErrorHandler;->onError(Landroid/support/place/rpc/RpcError;)V

    .line 274
    return-void
.end method
