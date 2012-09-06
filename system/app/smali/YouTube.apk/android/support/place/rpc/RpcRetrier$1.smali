.class Landroid/support/place/rpc/RpcRetrier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/place/rpc/RpcRetrier;

.field final synthetic val$task:Landroid/support/place/rpc/RpcRetrier$Task;


# direct methods
.method constructor <init>(Landroid/support/place/rpc/RpcRetrier;Landroid/support/place/rpc/RpcRetrier$Task;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Landroid/support/place/rpc/RpcRetrier$1;->this$0:Landroid/support/place/rpc/RpcRetrier;

    iput-object p2, p0, Landroid/support/place/rpc/RpcRetrier$1;->val$task:Landroid/support/place/rpc/RpcRetrier$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/place/rpc/RpcRetrier$1;->val$task:Landroid/support/place/rpc/RpcRetrier$Task;

    iget-object v1, p0, Landroid/support/place/rpc/RpcRetrier$1;->this$0:Landroid/support/place/rpc/RpcRetrier;

    #getter for: Landroid/support/place/rpc/RpcRetrier;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v1}, Landroid/support/place/rpc/RpcRetrier;->access$000(Landroid/support/place/rpc/RpcRetrier;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/place/rpc/RpcRetrier$Task;->sendRpc(Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 36
    return-void
.end method
