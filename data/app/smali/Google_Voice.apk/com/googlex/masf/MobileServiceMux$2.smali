.class Lcom/googlex/masf/MobileServiceMux$2;
.super Lcom/googlex/common/task/TimerTask;


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
.method constructor <init>(Lcom/googlex/masf/MobileServiceMux;Lcom/googlex/common/task/TaskRunner;)V
    .registers 3

    iput-object p1, p0, Lcom/googlex/masf/MobileServiceMux$2;->this$0:Lcom/googlex/masf/MobileServiceMux;

    invoke-direct {p0, p2}, Lcom/googlex/common/task/TimerTask;-><init>(Lcom/googlex/common/task/TaskRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->access$800()Lcom/googlex/debug/LogSource;

    move-result-object v0

    const-string v1, "Running delayed flush"

    invoke-virtual {v0, v1}, Lcom/googlex/debug/LogSource;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$2;->this$0:Lcom/googlex/masf/MobileServiceMux;

    #getter for: Lcom/googlex/masf/MobileServiceMux;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/googlex/masf/MobileServiceMux;->access$700(Lcom/googlex/masf/MobileServiceMux;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/googlex/masf/MobileServiceMux$2;->this$0:Lcom/googlex/masf/MobileServiceMux;

    invoke-virtual {v0}, Lcom/googlex/masf/MobileServiceMux;->scheduleFlush()V

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v0
.end method
