.class Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$3;
.super Landroid/content/BroadcastReceiver;
.source "FTCResultSessionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$3;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 182
    const-string v0, "android.intent.action.FTC_SERVICE_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$3;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->removeListActivity()V

    .line 186
    :cond_11
    return-void
.end method
