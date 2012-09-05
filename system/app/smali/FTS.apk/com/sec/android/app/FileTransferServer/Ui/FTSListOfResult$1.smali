.class Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$1;
.super Landroid/content/BroadcastReceiver;
.source "FTSListOfResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;)V
    .registers 2
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 151
    const-string v0, "android.intent.action.FTS_SERVICE_START"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult$1;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;

    #calls: Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->destroyActivity()V
    invoke-static {v0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;->access$000(Lcom/sec/android/app/FileTransferServer/Ui/FTSListOfResult;)V

    .line 155
    :cond_11
    return-void
.end method
