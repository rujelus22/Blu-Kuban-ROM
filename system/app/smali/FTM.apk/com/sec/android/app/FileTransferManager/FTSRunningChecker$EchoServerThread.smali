.class Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;
.super Ljava/lang/Object;
.source "FTSRunningChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EchoServerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

.field thisThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)V
    .registers 3
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->thisThread:Ljava/lang/Thread;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;-><init>(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->thisThread:Ljava/lang/Thread;

    .line 47
    :try_start_7
    iget-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->firstStart:Z
    invoke-static {v3}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$000(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 49
    iget-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    const/4 v5, 0x1

    #setter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->firstStart:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$002(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;Z)Z

    .line 50
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FileShareServer.SERVER_CHECK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, it2:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$100(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    const-string v3, "[FT]-Server"

    const-string v5, "FTSRunningChecker :Running Thread - check server state: wait responce for 10000 ms"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$200(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x1544

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 60
    .end local v2           #it2:Landroid/content/Intent;
    :goto_39
    iget-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->threadRun:Z
    invoke-static {v3}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$300(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Z

    move-result v3

    if-eqz v3, :cond_db

    invoke-static {}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$400()Ljava/lang/Thread;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->thisThread:Ljava/lang/Thread;

    if-ne v3, v5, :cond_db

    .line 62
    const-string v5, "[FT]-Server"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTSRunningChecker :echoServerThread == == thisThread(sleep for 900000)"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$400()Ljava/lang/Thread;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->thisThread:Ljava/lang/Thread;

    if-ne v3, v7, :cond_d9

    move v3, v4

    :goto_5f
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-wide/32 v5, 0xdbba0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 64
    iget-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$200(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/os/Handler;

    move-result-object v3

    const/16 v5, 0x1544

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    const-string v3, "[FT]-Server"

    const-string v5, "FTSRunningChecker :Running Thread - check server state: wait responce for 10000 ms"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FileShareServer.SERVER_CHECK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, it:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$100(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_94} :catch_95

    goto :goto_39

    .line 71
    .end local v1           #it:Landroid/content/Intent;
    :catch_95
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    iget-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.FileTransferServer.Kill_server"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    const-string v3, "[FT]-Server"

    const-string v4, " send FileTransferServer.Kill_server "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$EchoServerThread;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$100(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->requestKillProcess(Landroid/content/Context;)V

    .line 77
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSRunningChecker :Intentional Exception (Interrupt)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0           #e:Ljava/lang/Exception;
    :goto_cf
    return-void

    .line 57
    :cond_d0
    :try_start_d0
    const-string v3, "[FT]-Server"

    const-string v5, "FTSRunningChecker :First runniung...not check server start"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 62
    :cond_d9
    const/4 v3, 0x0

    goto :goto_5f

    .line 69
    :cond_db
    const-string v3, "[FT]-Server"

    const-string v4, "FTSRunningChecker :echoServerThread is dead"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_e2} :catch_95

    goto :goto_cf
.end method
