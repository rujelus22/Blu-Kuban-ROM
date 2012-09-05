.class Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$1;
.super Landroid/content/BroadcastReceiver;
.source "FTSRunningChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)V
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$1;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v2, 0x1544

    .line 186
    const-string v0, "com.sec.android.app.FileShareServer.SERVER_ALIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$1;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$200(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    const-string v0, "[FT]-Server"

    const-string v1, "FTSRunningChecker : remove Message : SERVER_NOT_RESPONCE start - server is Alive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1e
    const-string v0, "com.sec.android.app.FileShareServer.CHECKER_STOP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$1;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    #getter for: Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->access$200(Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    const-string v0, "[FT]-Server"

    const-string v1, "FTSRunningChecker : remove Message :CHECKER_STOP - checker is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker$1;->this$0:Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferManager/FTSRunningChecker;->stopSelf()V

    .line 197
    :cond_3f
    return-void
.end method
