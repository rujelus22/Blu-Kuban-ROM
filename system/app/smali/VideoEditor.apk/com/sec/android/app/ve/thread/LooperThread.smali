.class public Lcom/sec/android/app/ve/thread/LooperThread;
.super Ljava/lang/Thread;
.source "LooperThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;
    }
.end annotation


# static fields
.field public static final WAIT_PROGRESS_HIDE_WHAT:I = 0x2

.field public static final WAIT_PROGRESS_SHOW_WHAT:I = 0x1

.field private static _instance:Lcom/sec/android/app/ve/thread/LooperThread;

.field public static handler:Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;


# instance fields
.field private mLooper:Landroid/os/Looper;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/LooperThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/app/ve/thread/LooperThread;->start()V

    .line 41
    :cond_c
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/ve/thread/LooperThread;
    .registers 2

    .prologue
    .line 32
    const-class v1, Lcom/sec/android/app/ve/thread/LooperThread;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->_instance:Lcom/sec/android/app/ve/thread/LooperThread;

    if-nez v0, :cond_e

    .line 33
    new-instance v0, Lcom/sec/android/app/ve/thread/LooperThread;

    invoke-direct {v0}, Lcom/sec/android/app/ve/thread/LooperThread;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->_instance:Lcom/sec/android/app/ve/thread/LooperThread;

    .line 34
    :cond_e
    sget-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->_instance:Lcom/sec/android/app/ve/thread/LooperThread;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public init()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 50
    monitor-enter p0

    .line 51
    :try_start_4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/thread/LooperThread;->mLooper:Landroid/os/Looper;

    .line 52
    new-instance v0, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;

    iget-object v1, p0, Lcom/sec/android/app/ve/thread/LooperThread;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;-><init>(Lcom/sec/android/app/ve/thread/LooperThread;Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/android/app/ve/thread/LooperThread;->handler:Lcom/sec/android/app/ve/thread/LooperThread$MyHandler;

    .line 50
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 54
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 55
    return-void

    .line 50
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public terminate()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method
