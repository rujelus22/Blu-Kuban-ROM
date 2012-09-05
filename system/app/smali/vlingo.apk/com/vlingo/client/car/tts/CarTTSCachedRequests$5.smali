.class Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;
.super Ljava/lang/Object;
.source "CarTTSCachedRequests.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->requestComplete(Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

.field final synthetic val$callback:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    iput-object p2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;->val$callback:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 438
    iget-object v1, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    monitor-enter v1

    .line 439
    :try_start_3
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->runningTasks:Ljava/util/Vector;
    invoke-static {v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$500(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;->val$callback:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 440
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #getter for: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->runningTasks:Ljava/util/Vector;
    invoke-static {v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$500(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)Ljava/util/Vector;

    move-result-object v0

    iget-object v2, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;->val$callback:Lcom/vlingo/client/car/tts/CarTTSCachedRequests$HttpCallbackImpl;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    invoke-static {v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1308(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)I

    .line 442
    iget-object v0, p0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests$5;->this$0:Lcom/vlingo/client/car/tts/CarTTSCachedRequests;

    #calls: Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->fetchNextRequest()V
    invoke-static {v0}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->access$1000(Lcom/vlingo/client/car/tts/CarTTSCachedRequests;)V

    .line 444
    :cond_26
    monitor-exit v1

    .line 445
    return-void

    .line 444
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method
