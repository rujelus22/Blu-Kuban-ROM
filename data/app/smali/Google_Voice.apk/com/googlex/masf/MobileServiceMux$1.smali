.class Lcom/googlex/masf/MobileServiceMux$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlex/masf/MobileServiceMux;-><init>(Lcom/googlex/masf/MobileServiceMux$Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlex/masf/MobileServiceMux;


# direct methods
.method constructor <init>(Lcom/googlex/masf/MobileServiceMux;)V
    .registers 2

    iput-object p1, p0, Lcom/googlex/masf/MobileServiceMux$1;->this$0:Lcom/googlex/masf/MobileServiceMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$1;->this$0:Lcom/googlex/masf/MobileServiceMux;

    #getter for: Lcom/googlex/masf/MobileServiceMux;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/googlex/masf/MobileServiceMux;->access$700(Lcom/googlex/masf/MobileServiceMux;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->access$800()Lcom/googlex/debug/LogSource;

    move-result-object v0

    const-string v2, "Running flush"

    invoke-virtual {v0, v2}, Lcom/googlex/debug/LogSource;->info(Ljava/lang/Object;)V

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlex/common/Config;->getClock()Lcom/googlex/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/googlex/common/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$1;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iget-wide v4, v0, Lcom/googlex/masf/MobileServiceMux;->nextFlush:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_38

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$1;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/googlex/masf/MobileServiceMux;->flushTask:Lcom/googlex/common/task/TimerTask;

    iget-object v2, p0, Lcom/googlex/masf/MobileServiceMux$1;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iget-wide v2, v2, Lcom/googlex/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v0, v2, v3}, Lcom/googlex/common/task/TimerTask;->setDeadline(J)V

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$1;->this$0:Lcom/googlex/masf/MobileServiceMux;

    iget-object v0, v0, Lcom/googlex/masf/MobileServiceMux;->flushTask:Lcom/googlex/common/task/TimerTask;

    invoke-virtual {v0}, Lcom/googlex/common/task/TimerTask;->schedule()V

    monitor-exit v1

    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$1;->this$0:Lcom/googlex/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/googlex/masf/MobileServiceMux;->nextFlush:J

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$1;->this$0:Lcom/googlex/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/googlex/masf/MobileServiceMux;->hardDeadline:J

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_7 .. :try_end_45} :catchall_4b

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$1;->this$0:Lcom/googlex/masf/MobileServiceMux;

    invoke-virtual {v0}, Lcom/googlex/masf/MobileServiceMux;->processRequests()V

    goto :goto_37

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0
.end method
