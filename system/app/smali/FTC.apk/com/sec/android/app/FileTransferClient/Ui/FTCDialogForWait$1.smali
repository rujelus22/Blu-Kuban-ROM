.class Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$1;
.super Landroid/content/BroadcastReceiver;
.source "FTCDialogForWait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    :try_start_4
    const-string v2, "com.sec.android.app.FileTransferClient.REMOVE_WAIT_POPUP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "android.intent.action.FTC_SERVICE_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 76
    :cond_14
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;

    invoke-virtual {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->popupDestroy()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    .line 84
    :cond_19
    :goto_19
    return-void

    .line 79
    :catch_1a
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCDialogForWait :mBroadcastReceiver - Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$1;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;

    invoke-virtual {v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->popupDestroy()V

    goto :goto_19
.end method
