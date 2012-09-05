.class public Lcom/sec/android/app/FileTransferServer/FTSTaskKiller;
.super Landroid/content/BroadcastReceiver;
.source "FTSTaskKiller.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    if-eqz p2, :cond_33

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 22
    const-string v0, "[FT]-Server"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTSTaskKiller :intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.FileTransferServer.Kill_server"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSTaskKiller;->requestKillProcess(Landroid/content/Context;)V

    .line 30
    :cond_33
    return-void
.end method

.method requestKillProcess(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/FileTransferServer/FTSTaskKiller$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/FileTransferServer/FTSTaskKiller$1;-><init>(Lcom/sec/android/app/FileTransferServer/FTSTaskKiller;Landroid/content/Context;)V

    const-string v2, "Process Killer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    return-void
.end method
