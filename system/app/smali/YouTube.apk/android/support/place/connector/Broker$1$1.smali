.class Landroid/support/place/connector/Broker$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/Broker$1;

.field final synthetic val$response:[B


# direct methods
.method constructor <init>(Landroid/support/place/connector/Broker$1;[B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Landroid/support/place/connector/Broker$1$1;->this$1:Landroid/support/place/connector/Broker$1;

    iput-object p2, p0, Landroid/support/place/connector/Broker$1$1;->val$response:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/place/connector/Broker$1$1;->this$1:Landroid/support/place/connector/Broker$1;

    iget-object v0, v0, Landroid/support/place/connector/Broker$1;->this$0:Landroid/support/place/connector/Broker;

    iget-object v0, v0, Landroid/support/place/connector/Broker;->mConnection:Landroid/support/place/connector/IBrokerConnection;

    if-eqz v0, :cond_11

    .line 241
    iget-object v0, p0, Landroid/support/place/connector/Broker$1$1;->this$1:Landroid/support/place/connector/Broker$1;

    iget-object v0, v0, Landroid/support/place/connector/Broker$1;->val$result:Landroid/support/place/rpc/RpcResultHandler;

    iget-object v1, p0, Landroid/support/place/connector/Broker$1$1;->val$response:[B

    invoke-interface {v0, v1}, Landroid/support/place/rpc/RpcResultHandler;->onResult([B)V

    .line 243
    :cond_11
    return-void
.end method
