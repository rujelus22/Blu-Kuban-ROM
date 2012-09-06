.class Lcom/googlex/masf/MobileServiceMux$4;
.super Lcom/googlex/common/task/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlex/masf/MobileServiceMux;->sendMacroRequest(Ljava/util/Vector;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlex/masf/MobileServiceMux;

.field final synthetic val$contentLength:I

.field final synthetic val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

.field final synthetic val$requests:[Lcom/googlex/masf/protocol/Request;


# direct methods
.method constructor <init>(Lcom/googlex/masf/MobileServiceMux;Lcom/googlex/common/task/TaskRunner;Lcom/googlex/common/async/AsyncHttpRequest;[Lcom/googlex/masf/protocol/Request;I)V
    .registers 6

    iput-object p1, p0, Lcom/googlex/masf/MobileServiceMux$4;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iput-object p3, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    iput-object p4, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$requests:[Lcom/googlex/masf/protocol/Request;

    iput p5, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$contentLength:I

    invoke-direct {p0, p2}, Lcom/googlex/common/task/Task;-><init>(Lcom/googlex/common/task/TaskRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->access$800()Lcom/googlex/debug/LogSource;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Macro response received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlex/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/googlex/common/async/AsyncHttpRequest;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->access$800()Lcom/googlex/debug/LogSource;

    move-result-object v0

    const-string v1, "Macro response received - running"

    invoke-virtual {v0, v1}, Lcom/googlex/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->this$0:Lcom/googlex/masf/MobileServiceMux;

    #getter for: Lcom/googlex/masf/MobileServiceMux;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/googlex/masf/MobileServiceMux;->access$700(Lcom/googlex/masf/MobileServiceMux;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :goto_35
    :try_start_35
    iget-object v2, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$requests:[Lcom/googlex/masf/protocol/Request;

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    iget-object v2, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$requests:[Lcom/googlex/masf/protocol/Request;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    invoke-interface {v3}, Lcom/googlex/common/async/AsyncHttpRequest;->getLastProgressTimestamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/googlex/masf/protocol/Request;->updateProgress(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_4a
    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->this$0:Lcom/googlex/masf/MobileServiceMux;

    #calls: Lcom/googlex/masf/MobileServiceMux;->scheduleDelayedFlush()V
    invoke-static {v0}, Lcom/googlex/masf/MobileServiceMux;->access$900(Lcom/googlex/masf/MobileServiceMux;)V

    monitor-exit v1

    :cond_50
    :goto_50
    return-void

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/googlex/common/async/AsyncHttpRequest;->isCompletedOrException()Z

    move-result v0

    if-eqz v0, :cond_50

    :try_start_5c
    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/googlex/common/async/AsyncHttpRequest;->hasException()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->access$800()Lcom/googlex/debug/LogSource;

    move-result-object v0

    const-string v1, "Macro response received - exception"

    invoke-virtual {v0, v1}, Lcom/googlex/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$requests:[Lcom/googlex/masf/protocol/Request;

    iget-object v2, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    invoke-interface {v2}, Lcom/googlex/common/async/AsyncHttpRequest;->getException()Ljava/lang/Exception;

    move-result-object v2

    #calls: Lcom/googlex/masf/MobileServiceMux;->requeueOrFailRequests([Lcom/googlex/masf/protocol/Request;Ljava/lang/Exception;)V
    invoke-static {v0, v1, v2}, Lcom/googlex/masf/MobileServiceMux;->access$1000(Lcom/googlex/masf/MobileServiceMux;[Lcom/googlex/masf/protocol/Request;Ljava/lang/Exception;)V

    :goto_7a
    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$requests:[Lcom/googlex/masf/protocol/Request;

    #calls: Lcom/googlex/masf/MobileServiceMux;->disposeRequests([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/googlex/masf/MobileServiceMux;->access$1200(Lcom/googlex/masf/MobileServiceMux;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iget v1, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$contentLength:I

    invoke-static {v0, v1}, Lcom/googlex/masf/MobileServiceMux;->access$1312(Lcom/googlex/masf/MobileServiceMux;I)I
    :try_end_88
    .catchall {:try_start_5c .. :try_end_88} :catchall_a6

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->this$0:Lcom/googlex/masf/MobileServiceMux;

    #calls: Lcom/googlex/masf/MobileServiceMux;->scheduleDelayedFlush()V
    invoke-static {v0}, Lcom/googlex/masf/MobileServiceMux;->access$900(Lcom/googlex/masf/MobileServiceMux;)V

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    invoke-interface {v0}, Lcom/googlex/common/async/AsyncHttpRequest;->close()V

    goto :goto_50

    :cond_93
    :try_start_93
    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->access$800()Lcom/googlex/debug/LogSource;

    move-result-object v0

    const-string v1, "Macro response received - complete"

    invoke-virtual {v0, v1}, Lcom/googlex/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$4;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iget-object v1, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    iget-object v2, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$requests:[Lcom/googlex/masf/protocol/Request;

    #calls: Lcom/googlex/masf/MobileServiceMux;->handleMacroResponse(Lcom/googlex/common/async/AsyncHttpRequest;[Lcom/googlex/masf/protocol/Request;)V
    invoke-static {v0, v1, v2}, Lcom/googlex/masf/MobileServiceMux;->access$1100(Lcom/googlex/masf/MobileServiceMux;Lcom/googlex/common/async/AsyncHttpRequest;[Lcom/googlex/masf/protocol/Request;)V
    :try_end_a5
    .catchall {:try_start_93 .. :try_end_a5} :catchall_a6

    goto :goto_7a

    :catchall_a6
    move-exception v0

    iget-object v1, p0, Lcom/googlex/masf/MobileServiceMux$4;->this$0:Lcom/googlex/masf/MobileServiceMux;

    #calls: Lcom/googlex/masf/MobileServiceMux;->scheduleDelayedFlush()V
    invoke-static {v1}, Lcom/googlex/masf/MobileServiceMux;->access$900(Lcom/googlex/masf/MobileServiceMux;)V

    iget-object v1, p0, Lcom/googlex/masf/MobileServiceMux$4;->val$macroRequest:Lcom/googlex/common/async/AsyncHttpRequest;

    invoke-interface {v1}, Lcom/googlex/common/async/AsyncHttpRequest;->close()V

    throw v0
.end method
