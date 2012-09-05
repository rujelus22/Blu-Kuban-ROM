.class public Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;
.super Landroid/app/Service;
.source "FTSRunningChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;
    }
.end annotation


# static fields
.field private static echoServerThread:Ljava/lang/Thread;


# instance fields
.field bRegisterReceiver:Z

.field private firstStart:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionMode:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private threadRun:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->echoServerThread:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;

    .line 34
    iput v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mConnectionMode:I

    .line 35
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->firstStart:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->threadRun:Z

    .line 180
    new-instance v0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$1;-><init>(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    new-instance v0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$2;-><init>(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->firstStart:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->firstStart:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->threadRun:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->echoServerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mConnectionMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mConnectionMode:I

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    const-string v0, "[FT]-Server"

    const-string v1, "FTSRunningChecker :onCreate FTSRunningChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1545

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 113
    :try_start_0
    sget-object v1, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->echoServerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->echoServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 115
    const-string v1, "[FT]-Server"

    const-string v2, "FTSRunningChecker :echoServerThread interrupt"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v1, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->echoServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 118
    :cond_18
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->echoServerThread:Ljava/lang/Thread;

    .line 119
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->threadRun:Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_2d

    .line 128
    :goto_1e
    :try_start_1e
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->bRegisterReceiver:Z

    if-eqz v1, :cond_29

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    :cond_29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->bRegisterReceiver:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_47

    .line 136
    :goto_2c
    return-void

    .line 121
    :catch_2d
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSRunningChecker :Exception on Resume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 132
    .end local v0           #e:Ljava/lang/Exception;
    :catch_47
    move-exception v0

    .line 134
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSRunningChecker :Exception on Resume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 94
    const-string v0, "[FT]-Server"

    const-string v1, "FTSRunningChecker :onStart FTSRunningChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1545

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->startHandler(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 102
    const-string v0, "[FT]-Server"

    const-string v1, "FTSRunningChecker :onStartCommand FTSRunningChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1545

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->startHandler(Landroid/content/Intent;)V

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method requestKillProcess(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 289
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$3;-><init>(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;Landroid/content/Context;)V

    const-string v2, "Process Killer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 317
    return-void
.end method

.method public startHandler(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 140
    iput-object p0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->firstStart:Z

    .line 142
    if-eqz p1, :cond_16

    .line 144
    const-string v1, "com.sec.android.app.FileTransferServer.FTS_CHECKER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 146
    iput-boolean v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->firstStart:Z

    .line 152
    :cond_16
    :try_start_16
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->bRegisterReceiver:Z

    if-nez v1, :cond_39

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->bRegisterReceiver:Z

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.app.FileShareServer.SERVER_ALIVE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.sec.android.app.FileShareServer.CHECKER_STOP"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_39} :catch_5a

    .line 166
    :cond_39
    :goto_39
    :try_start_39
    sget-object v1, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->echoServerThread:Ljava/lang/Thread;

    if-nez v1, :cond_59

    .line 168
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;-><init>(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->echoServerThread:Ljava/lang/Thread;

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->threadRun:Z

    .line 170
    sget-object v1, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->echoServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 171
    const-string v1, "[FT]-Server"

    const-string v2, "FTSRunningChecker :echoServerThread start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_59} :catch_74

    .line 178
    :cond_59
    :goto_59
    return-void

    .line 159
    :catch_5a
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSRunningChecker :Exception on start handler - receiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    :catch_74
    move-exception v0

    .line 176
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSRunningChecker :Exception on start handler - thread starter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59
.end method
