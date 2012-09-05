.class public Lcom/google/android/apps/plus/service/ServiceThread;
.super Ljava/lang/Thread;
.source "ServiceThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;
    }
.end annotation


# instance fields
.field private mIntentProcessor:Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;

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


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;)V
    .registers 5
    .parameter "handler"
    .parameter "threadName"
    .parameter "intentProcessor"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceThread$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/ServiceThread$1;-><init>(Lcom/google/android/apps/plus/service/ServiceThread;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mMainHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/service/ServiceThread;->setName(Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mQueue:Ljava/util/Queue;

    .line 74
    iput-object p3, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mIntentProcessor:Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/service/ServiceThread;)Ljava/util/Queue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/service/ServiceThread;)Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mIntentProcessor:Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/service/ServiceThread;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/service/ServiceThread;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public put(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_10
    return-void
.end method

.method public quit()V
    .registers 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_d

    .line 134
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 138
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v0

    .line 139
    .local v0, queueSize:I
    if-lez v0, :cond_1a

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 142
    :cond_1a
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mThreadHandler:Landroid/os/Handler;

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/service/ServiceThread$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/service/ServiceThread$2;-><init>(Lcom/google/android/apps/plus/service/ServiceThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mIntentProcessor:Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;

    if-eqz v0, :cond_20

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/service/ServiceThread;->mIntentProcessor:Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;

    invoke-interface {v0}, Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;->onServiceThreadEnd()V

    .line 127
    :cond_20
    return-void
.end method
