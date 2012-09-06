.class public abstract Lcom/android/emailcommon/service/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;,
        Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;,
        Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;
    }
.end annotation


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDead:Z

.field protected final mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private final mTag:Ljava/lang/String;

.field private mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

.field private mTimeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "_context"
    .parameter "_intent"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyRunnable;-><init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy$1;)V

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mRunnable:Ljava/lang/Runnable;

    .line 52
    const-string v0, " unnamed"

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/emailcommon/service/ServiceProxy$ProxyConnection;-><init>(Lcom/android/emailcommon/service/ServiceProxy;Lcom/android/emailcommon/service/ServiceProxy$1;)V

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 55
    const/16 v0, 0x2d

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mDead:Z

    .line 62
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTag:Ljava/lang/String;

    .line 65
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 66
    iget v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    .line 68
    :cond_37
    return-void
.end method

.method static synthetic access$200(Lcom/android/emailcommon/service/ServiceProxy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/emailcommon/service/ServiceProxy;->runTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/emailcommon/service/ServiceProxy;)Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    return-object v0
.end method

.method private runTask()V
    .registers 3

    .prologue
    .line 135
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 138
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    .line 141
    :goto_d
    return-void

    .line 139
    :catch_e
    move-exception v1

    goto :goto_d
.end method


# virtual methods
.method public endTask()V
    .registers 3

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_17

    .line 125
    :goto_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mDead:Z

    .line 126
    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 130
    :try_start_d
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0

    .line 120
    :catch_17
    move-exception v0

    goto :goto_7
.end method

.method public abstract onConnected(Landroid/os/IBinder;)V
.end method

.method public setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z
    .registers 6
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mDead:Z

    if-eqz v0, :cond_a

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 152
    :cond_a
    iput-object p1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTask:Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mStartTime:J

    .line 157
    iget-object v0, p0, Lcom/android/emailcommon/service/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/emailcommon/service/ServiceProxy;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    .registers 4
    .parameter "task"
    .parameter "name"

    .prologue
    .line 144
    iput-object p2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mName:Ljava/lang/String;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/service/ServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;)Z

    move-result v0

    return v0
.end method

.method public test()Z
    .registers 4

    .prologue
    .line 191
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/ServiceProxy$1;

    invoke-direct {v1, p0}, Lcom/android/emailcommon/service/ServiceProxy$1;-><init>(Lcom/android/emailcommon/service/ServiceProxy;)V

    const-string v2, "test"

    invoke-virtual {p0, v1, v2}, Lcom/android/emailcommon/service/ServiceProxy;->setTask(Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 201
    :goto_b
    return v1

    .line 199
    :catch_c
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public waitForCompletion()V
    .registers 9

    .prologue
    .line 161
    iget-object v3, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 162
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    move-result-wide v0

    .line 167
    .local v0, time:J
    :try_start_7
    iget-object v2, p0, Lcom/android/emailcommon/service/ServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    iget v4, p0, Lcom/android/emailcommon/service/ServiceProxy;->mTimeout:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_12} :catch_17

    .line 175
    :goto_12
    :try_start_12
    monitor-exit v3

    .line 176
    return-void

    .line 175
    .end local v0           #time:J
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_14

    throw v2

    .line 168
    .restart local v0       #time:J
    :catch_17
    move-exception v2

    goto :goto_12
.end method
