.class Lcom/google/masf/services/resume/WindowResumeService$MainTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/masf/services/resume/WindowResumeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/masf/services/resume/WindowResumeService;


# direct methods
.method private constructor <init>(Lcom/google/masf/services/resume/WindowResumeService;)V
    .registers 2

    iput-object p1, p0, Lcom/google/masf/services/resume/WindowResumeService$MainTask;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/masf/services/resume/WindowResumeService;Lcom/google/masf/services/resume/WindowResumeService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/masf/services/resume/WindowResumeService$MainTask;-><init>(Lcom/google/masf/services/resume/WindowResumeService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/masf/services/resume/WindowResumeService$MainTask;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    #getter for: Lcom/google/masf/services/resume/WindowResumeService;->mutex:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/masf/services/resume/WindowResumeService;->access$600(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/google/masf/services/resume/WindowResumeService$MainTask;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    #getter for: Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;
    invoke-static {v2}, Lcom/google/masf/services/resume/WindowResumeService;->access$700(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_21

    iget-object v0, p0, Lcom/google/masf/services/resume/WindowResumeService$MainTask;->this$0:Lcom/google/masf/services/resume/WindowResumeService;

    #getter for: Lcom/google/masf/services/resume/WindowResumeService;->activeQueue:Ljava/util/Vector;
    invoke-static {v0}, Lcom/google/masf/services/resume/WindowResumeService;->access$700(Lcom/google/masf/services/resume/WindowResumeService;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/masf/services/resume/WindowResumeService$Control;

    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_28

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/google/masf/services/resume/WindowResumeService$Control;->run()V

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
