.class Landroid/support/place/rpc/RpcRetrier$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# instance fields
.field final synthetic this$0:Landroid/support/place/rpc/RpcRetrier;


# direct methods
.method constructor <init>(Landroid/support/place/rpc/RpcRetrier;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Landroid/support/place/rpc/RpcRetrier$2;->this$0:Landroid/support/place/rpc/RpcRetrier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 6
    .parameter

    .prologue
    .line 47
    const-string v0, "RpcRetrier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RPC failed ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/place/rpc/RpcRetrier$2;->this$0:Landroid/support/place/rpc/RpcRetrier;

    #getter for: Landroid/support/place/rpc/RpcRetrier;->mName:Ljava/lang/String;
    invoke-static {v2}, Landroid/support/place/rpc/RpcRetrier;->access$100(Landroid/support/place/rpc/RpcRetrier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Landroid/support/place/rpc/RpcRetrier$2;->this$0:Landroid/support/place/rpc/RpcRetrier;

    invoke-static {v0}, Landroid/support/place/rpc/RpcRetrier;->access$204(Landroid/support/place/rpc/RpcRetrier;)I

    move-result v0

    iget-object v1, p0, Landroid/support/place/rpc/RpcRetrier$2;->this$0:Landroid/support/place/rpc/RpcRetrier;

    #getter for: Landroid/support/place/rpc/RpcRetrier;->mMaxRetries:I
    invoke-static {v1}, Landroid/support/place/rpc/RpcRetrier;->access$300(Landroid/support/place/rpc/RpcRetrier;)I

    move-result v1

    if-lt v0, v1, :cond_53

    .line 49
    const-string v0, "RpcRetrier"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/place/rpc/RpcRetrier$2;->this$0:Landroid/support/place/rpc/RpcRetrier;

    #getter for: Landroid/support/place/rpc/RpcRetrier;->mName:Ljava/lang/String;
    invoke-static {v2}, Landroid/support/place/rpc/RpcRetrier;->access$100(Landroid/support/place/rpc/RpcRetrier;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): too many retries, giving up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_52
    return-void

    .line 51
    :cond_53
    iget-object v0, p0, Landroid/support/place/rpc/RpcRetrier$2;->this$0:Landroid/support/place/rpc/RpcRetrier;

    #getter for: Landroid/support/place/rpc/RpcRetrier;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/support/place/rpc/RpcRetrier;->access$600(Landroid/support/place/rpc/RpcRetrier;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/place/rpc/RpcRetrier$2;->this$0:Landroid/support/place/rpc/RpcRetrier;

    #getter for: Landroid/support/place/rpc/RpcRetrier;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/support/place/rpc/RpcRetrier;->access$400(Landroid/support/place/rpc/RpcRetrier;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Landroid/support/place/rpc/RpcRetrier$2;->this$0:Landroid/support/place/rpc/RpcRetrier;

    #getter for: Landroid/support/place/rpc/RpcRetrier;->mRetryDelayMs:I
    invoke-static {v2}, Landroid/support/place/rpc/RpcRetrier;->access$500(Landroid/support/place/rpc/RpcRetrier;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_52
.end method
