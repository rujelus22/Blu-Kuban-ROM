.class public final Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;
.super Ljava/lang/Object;
.source "GsLongRunningActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;


# instance fields
.field private callback:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

.field private context:Landroid/content/Context;

.field private finishedHandler:Landroid/os/Handler;

.field private mPprogressDialogMessage:Ljava/lang/String;

.field private mProgressDialogTitle:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->sInstance:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->finishedHandler:Landroid/os/Handler;

    .line 45
    iput-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    .line 47
    iput-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mProgressDialogTitle:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mPprogressDialogMessage:Ljava/lang/String;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;Ljava/lang/Void;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->finishedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;
    .registers 2

    .prologue
    .line 54
    const-class v1, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->sInstance:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    if-nez v0, :cond_e

    .line 55
    new-instance v0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->sInstance:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;

    .line 56
    :cond_e
    sget-object v0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->sInstance:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V
    .registers 6
    .parameter "result"
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->dismiss()V

    .line 156
    if-eqz p2, :cond_1e

    .line 157
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->callback:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;->onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->updateThread()V

    .line 160
    iput-object v2, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    .line 161
    iput-object v2, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->callback:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

    .line 164
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->callback:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

    if-eqz v0, :cond_27

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->callback:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;->onLongRunningActionFinished(Ljava/lang/Void;Ljava/lang/Exception;)V

    .line 167
    :cond_27
    return-void
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .registers 3

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    .line 172
    const-string v0, "[MyFiles]"

    const-string v1, "Long running dialog(dismiss)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 176
    :cond_14
    monitor-exit p0

    return-void

    .line 170
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;)V
    .registers 4
    .parameter "context"
    .parameter "finishedHandler"
    .parameter "callback"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->finishedHandler:Landroid/os/Handler;

    .line 62
    iput-object p3, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->callback:Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$GsLongRunningActionCallback;

    .line 63
    return-void
.end method

.method public declared-synchronized startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "progressDialogTitle"
    .parameter "progressDialogMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startLongRunningAction(Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter
    .parameter "progressDialogTitle"
    .parameter "progressDialogMessage"
    .parameter "cancelable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mProgressDialogTitle:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mPprogressDialogMessage:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->dismiss()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_48

    .line 83
    :try_start_8
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mProgressDialogTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mPprogressDialogMessage:Ljava/lang/String;

    const/4 v3, 0x1

    new-instance v5, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$1;-><init>(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;)V

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$2;-><init>(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 105
    const-string v0, "[MyFiles]"

    const-string v1, "Long running dialog(show)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_3f

    .line 113
    :try_start_2c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher$3;-><init>(Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;Ljava/util/concurrent/Callable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_48

    .line 142
    :goto_3d
    monitor-exit p0

    return-void

    .line 106
    :catch_3f
    move-exception v6

    .line 108
    .local v6, e:Ljava/lang/Exception;
    :try_start_40
    const-string v0, "[MyFiles]"

    const-string v1, "Error while ProgressDialog working"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_48

    goto :goto_3d

    .line 77
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateThread()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/GsLongRunningActionDispatcher;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 151
    :cond_11
    return-void
.end method
