.class Landroid/support/place/connector/Endpoint$Callback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/Endpoint$Callback;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/support/place/rpc/RpcContext;

.field final synthetic val$payload:[B

.field final synthetic val$status:Landroid/support/place/rpc/RpcError;


# direct methods
.method constructor <init>(Landroid/support/place/connector/Endpoint$Callback;Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Landroid/support/place/connector/Endpoint$Callback$2;->this$1:Landroid/support/place/connector/Endpoint$Callback;

    iput-object p2, p0, Landroid/support/place/connector/Endpoint$Callback$2;->val$action:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/place/connector/Endpoint$Callback$2;->val$payload:[B

    iput-object p4, p0, Landroid/support/place/connector/Endpoint$Callback$2;->val$context:Landroid/support/place/rpc/RpcContext;

    iput-object p5, p0, Landroid/support/place/connector/Endpoint$Callback$2;->val$status:Landroid/support/place/rpc/RpcError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 78
    iget-object v0, p0, Landroid/support/place/connector/Endpoint$Callback$2;->this$1:Landroid/support/place/connector/Endpoint$Callback;

    iget-object v0, v0, Landroid/support/place/connector/Endpoint$Callback;->this$0:Landroid/support/place/connector/Endpoint;

    iget-object v1, p0, Landroid/support/place/connector/Endpoint$Callback$2;->val$action:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/place/connector/Endpoint$Callback$2;->val$payload:[B

    iget-object v3, p0, Landroid/support/place/connector/Endpoint$Callback$2;->val$context:Landroid/support/place/rpc/RpcContext;

    iget-object v4, p0, Landroid/support/place/connector/Endpoint$Callback$2;->val$status:Landroid/support/place/rpc/RpcError;

    const/4 v5, 0x1

    #calls: Landroid/support/place/connector/Endpoint;->dispatchProcess(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B
    invoke-static/range {v0 .. v5}, Landroid/support/place/connector/Endpoint;->access$200(Landroid/support/place/connector/Endpoint;Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B

    .line 79
    return-void
.end method
