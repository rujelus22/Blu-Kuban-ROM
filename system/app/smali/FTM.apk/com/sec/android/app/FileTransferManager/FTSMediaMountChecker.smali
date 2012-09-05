.class public Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;
.super Landroid/app/Service;
.source "FTSMediaMountChecker.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 97
    new-instance v0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker$1;-><init>(Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    const-string v0, "[FT]-Server"

    const-string v1, "FTSMediaMountChecker :onCreate FTSMediaMountChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 92
    const-string v0, "[FT]-Server"

    const-string v1, "FTSMediaMountChecker :onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->stopSelf()V

    .line 95
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 34
    const-string v0, "[FT]-Server"

    const-string v1, "FTSMediaMountChecker :onStart FTSMediaMountChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->startHandler(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 41
    const-string v0, "[FT]-Server"

    const-string v1, "FTSMediaMountChecker :onStartCommand FTSMediaMountChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->startHandler(Landroid/content/Intent;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public startHandler(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    .line 47
    iput-object p0, p0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->mContext:Landroid/content/Context;

    .line 48
    if-nez p1, :cond_c

    .line 50
    const-string v2, "[FT]-Server"

    const-string v3, "FTSMediaMountChecker : start Handler : intent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_b
    :goto_b
    return-void

    .line 52
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 54
    const-string v2, "[FT]-Server"

    const-string v3, "FTSMediaMountChecker : start Handler : intent.getAction() is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 61
    :cond_1a
    :try_start_1a
    const-string v2, "com.sec.android.app.FileTransferServer.FTS_MEDIAMOUNT_CHECKER_START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_23} :catch_60

    move-result v2

    if-eqz v2, :cond_7d

    .line 65
    :try_start_26
    const-string v2, "[FT]-Server"

    const-string v3, "FTSMediaMountChecker :Receive FTS_MEDIAMOUNT_CHECKER_START  - START_SERVICE,10000"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v2, p0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileShareServer.SERVER_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, it:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_42} :catch_43

    goto :goto_b

    .line 70
    .end local v1           #it:Landroid/content/Intent;
    :catch_43
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    :try_start_44
    const-string v2, "[FT]-Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTSMediaMountChecker : start Handler FTS_MEDIAMOUNT_CHECKER_START : catch the exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->stopSelf()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5f} :catch_60

    goto :goto_b

    .line 83
    .end local v0           #e:Ljava/lang/Exception;
    :catch_60
    move-exception v0

    .line 85
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "[FT]-Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTSMediaMountChecker : start Handler : catch the exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->stopSelf()V

    goto :goto_b

    .line 76
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7d
    :try_start_7d
    const-string v2, "com.sec.android.app.FileTransferServer.FTS_MEDIAMOUNT_CHECKER_FINISH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 78
    const-string v2, "[FT]-Server"

    const-string v3, "FTSMediaMountChecker :VV ** Receive FTS_MEDIAMOUNT_CHECKER_FINISH  - REMOVE START SERVICE ** VV"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v2, p0, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferManager/FTSMediaMountChecker;->stopSelf()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_9a} :catch_60

    goto/16 :goto_b
.end method
