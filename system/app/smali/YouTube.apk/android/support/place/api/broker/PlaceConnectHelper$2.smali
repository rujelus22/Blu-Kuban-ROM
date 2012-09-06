.class Landroid/support/place/api/broker/PlaceConnectHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

.field final synthetic val$error:Landroid/support/place/rpc/RpcError;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/PlaceConnectHelper;Landroid/support/place/rpc/RpcError;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Landroid/support/place/api/broker/PlaceConnectHelper$2;->this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

    iput-object p2, p0, Landroid/support/place/api/broker/PlaceConnectHelper$2;->val$error:Landroid/support/place/rpc/RpcError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/place/api/broker/PlaceConnectHelper$2;->this$0:Landroid/support/place/api/broker/PlaceConnectHelper;

    #getter for: Landroid/support/place/api/broker/PlaceConnectHelper;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v0}, Landroid/support/place/api/broker/PlaceConnectHelper;->access$300(Landroid/support/place/api/broker/PlaceConnectHelper;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/api/broker/PlaceConnectHelper$2;->val$error:Landroid/support/place/rpc/RpcError;

    invoke-interface {v0, v1}, Landroid/support/place/rpc/RpcErrorHandler;->onError(Landroid/support/place/rpc/RpcError;)V

    .line 181
    return-void
.end method
