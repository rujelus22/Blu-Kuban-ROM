.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;
.super Ljava/lang/Thread;
.source "RealTimeChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceThread"
.end annotation


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field private final mProcessQueueRunnable:Ljava/lang/Runnable;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "handler"
    .parameter "threadName"

    .prologue
    .line 2502
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2474
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$1;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    .line 2503
    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mMainHandler:Landroid/os/Handler;

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->setName(Ljava/lang/String;)V

    .line 2505
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mQueue:Ljava/util/Queue;

    .line 2506
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2471
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->put(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)Ljava/util/Queue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private put(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2516
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 2517
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2519
    :cond_10
    return-void
.end method


# virtual methods
.method public quit()V
    .registers 4

    .prologue
    .line 2560
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2561
    const-string v1, "RealTimeChatService"

    const-string v2, "worker thread quit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1d

    .line 2564
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 2568
    :cond_1d
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v0

    .line 2569
    .local v0, queueSize:I
    if-lez v0, :cond_3a

    .line 2570
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2571
    const-string v1, "RealTimeChatService"

    const-string v2, "thread quit with items in queue"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_35
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 2576
    :cond_3a
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    #getter for: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;
    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$1500(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 2577
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2578
    const-string v1, "RealTimeChatService"

    const-string v2, "bunchClient not destroyed in quit"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    :cond_52
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->this$0:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->access$1502(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Lcom/google/android/apps/plus/realtimechat/BunchClient;)Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 2582
    :cond_58
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 2537
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2539
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mThreadHandler:Landroid/os/Handler;

    .line 2542
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$2;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2553
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2554
    return-void
.end method
