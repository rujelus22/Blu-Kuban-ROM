.class final Lcom/google/masf/MobileServiceMux$2;
.super Lcom/google/common/task/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/masf/MobileServiceMux;-><init>(Lcom/google/masf/MobileServiceMux$Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/masf/MobileServiceMux;


# direct methods
.method constructor <init>(Lcom/google/masf/MobileServiceMux;Lcom/google/common/task/TaskRunner;)V
    .registers 3

    iput-object p1, p0, Lcom/google/masf/MobileServiceMux$2;->this$0:Lcom/google/masf/MobileServiceMux;

    invoke-direct {p0, p2}, Lcom/google/common/task/TimerTask;-><init>(Lcom/google/common/task/TaskRunner;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/google/masf/MobileServiceMux;->access$800()Lcom/google/debug/LogSource;

    move-result-object v0

    const-string v1, "Running delayed flush"

    invoke-virtual {v0, v1}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$2;->this$0:Lcom/google/masf/MobileServiceMux;

    #getter for: Lcom/google/masf/MobileServiceMux;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/masf/MobileServiceMux;->access$700(Lcom/google/masf/MobileServiceMux;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$2;->this$0:Lcom/google/masf/MobileServiceMux;

    invoke-virtual {v0}, Lcom/google/masf/MobileServiceMux;->scheduleFlush()V

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v0
.end method
