.class Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept$1;
.super Landroid/content/BroadcastReceiver;
.source "FTSDialogForAccept.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, id:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v3, "SESSIONID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_30

    move-result-object v2

    .line 112
    :goto_c
    const-string v3, "com.sec.android.app.FileTransferServer.REMOVE_ACCEPT_POPUP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "android.intent.action.FTS_SERVICE_FINISH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 114
    :cond_1c
    if-eqz v2, :cond_52

    .line 116
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;

    #getter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mID:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->access$000(Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 118
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;

    invoke-virtual {v3}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->popupDestroy()V

    .line 131
    :cond_2f
    :goto_2f
    return-void

    .line 108
    :catch_30
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Server"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTSDialogForAccept :Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 122
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4a
    const-string v3, "[FT]-Server"

    const-string v4, "FTSDialogForAccept :this is not my session"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 127
    :cond_52
    iget-object v3, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;

    invoke-virtual {v3}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->popupDestroy()V

    .line 128
    const-string v3, "[FT]-Server"

    const-string v4, "FTSDialogForAccept :this is have the problem.....I can\'t get the ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method
