.class Landroid/support/place/connector/Endpoint$Callback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/place/connector/Endpoint$Callback;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$barrier:Landroid/os/ConditionVariable;

.field final synthetic val$context:Landroid/support/place/rpc/RpcContext;

.field final synthetic val$payload:[B

.field final synthetic val$result:[[B

.field final synthetic val$status:Landroid/support/place/rpc/RpcError;


# direct methods
.method constructor <init>(Landroid/support/place/connector/Endpoint$Callback;[[BLjava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Landroid/os/ConditionVariable;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/place/connector/Endpoint$Callback$1;->this$1:Landroid/support/place/connector/Endpoint$Callback;

    iput-object p2, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$result:[[B

    iput-object p3, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$action:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$payload:[B

    iput-object p5, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$context:Landroid/support/place/rpc/RpcContext;

    iput-object p6, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$status:Landroid/support/place/rpc/RpcError;

    iput-object p7, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$barrier:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 60
    iget-object v6, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$result:[[B

    iget-object v0, p0, Landroid/support/place/connector/Endpoint$Callback$1;->this$1:Landroid/support/place/connector/Endpoint$Callback;

    iget-object v0, v0, Landroid/support/place/connector/Endpoint$Callback;->this$0:Landroid/support/place/connector/Endpoint;

    iget-object v1, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$action:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$payload:[B

    iget-object v3, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$context:Landroid/support/place/rpc/RpcContext;

    iget-object v4, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$status:Landroid/support/place/rpc/RpcError;

    #calls: Landroid/support/place/connector/Endpoint;->dispatchProcess(Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B
    invoke-static/range {v0 .. v5}, Landroid/support/place/connector/Endpoint;->access$200(Landroid/support/place/connector/Endpoint;Ljava/lang/String;[BLandroid/support/place/rpc/RpcContext;Landroid/support/place/rpc/RpcError;Z)[B

    move-result-object v0

    aput-object v0, v6, v5

    .line 61
    iget-object v0, p0, Landroid/support/place/connector/Endpoint$Callback$1;->val$barrier:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 62
    return-void
.end method
