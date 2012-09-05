.class Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;
.super Ljava/lang/Object;
.source "SuggestionProviderExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;,
        Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;
    }
.end annotation


# instance fields
.field private final taskExecutor:Ljava/util/concurrent/Executor;

.field private final taskTracker:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->onTaskCreated(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V

    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->onTaskComplete(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V

    return-void
.end method

.method private declared-synchronized onTaskComplete(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    .line 58
    .local v0, numTasks:I
    :try_start_2
    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->requestId:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 59
    .local v1, req:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 60
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 62
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 63
    if-lez v0, :cond_2d

    .line 64
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_33

    .line 73
    :goto_2b
    monitor-exit p0

    return-void

    .line 69
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    goto :goto_2b

    .line 57
    .end local v1           #req:Ljava/lang/Integer;
    :catchall_33
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized onTaskCreated(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;)V
    .registers 6
    .parameter "task"

    .prologue
    .line 43
    monitor-enter p0

    const/4 v0, 0x0

    .line 44
    .local v0, numTasks:I
    :try_start_2
    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;->requestId:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 45
    .local v1, req:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 46
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    .line 49
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_2b

    .line 52
    monitor-exit p0

    return-void

    .line 43
    .end local v1           #req:Ljava/lang/Integer;
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized areTasksRunning(I)Z
    .registers 5
    .parameter "requestId"

    .prologue
    .line 31
    monitor-enter p0

    const/4 v0, 0x0

    .line 32
    .local v0, numTasks:I
    :try_start_2
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 33
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskTracker:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_27

    move-result v0

    .line 37
    :cond_20
    if-lez v0, :cond_25

    const/4 v1, 0x1

    :goto_23
    monitor-exit p0

    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_23

    .line 31
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized executeTask(Ljava/lang/String;ILcom/vlingo/client/typedrequests/provider/SuggestionProvider;Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V
    .registers 17
    .parameter "query"
    .parameter "requestId"
    .parameter "provider"
    .parameter "listener"
    .parameter "tag1"
    .parameter "tag2"
    .parameter "context"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;-><init>(Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;Ljava/lang/String;ILcom/vlingo/client/typedrequests/provider/SuggestionProvider;Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$SuggestionProviderListener;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V

    .line 79
    .local v0, task:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;
    iget-object v1, p0, Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor;->taskExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 80
    monitor-exit p0

    return-void

    .line 78
    .end local v0           #task:Lcom/vlingo/client/typedrequests/provider/SuggestionProviderExecutor$ProviderBackgroundTask;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method
