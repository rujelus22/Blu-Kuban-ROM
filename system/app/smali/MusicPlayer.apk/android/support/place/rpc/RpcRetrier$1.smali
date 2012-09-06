.class Landroid/support/place/rpc/RpcRetrier$1;
.super Ljava/lang/Object;
.source "RpcRetrier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/place/rpc/RpcRetrier;-><init>(Ljava/lang/String;Landroid/support/place/rpc/RpcRetrier$Task;Landroid/os/Handler;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
