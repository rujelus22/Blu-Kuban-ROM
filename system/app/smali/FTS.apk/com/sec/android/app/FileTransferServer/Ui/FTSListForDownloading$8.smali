.class Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$8;
.super Landroid/content/BroadcastReceiver;
.source "FTSListForDownloading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V
    .registers 2
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$8;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 522
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.FTS_SERVICE_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$8;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeListActivity()V

    .line 526
    :cond_11
    return-void
.end method
