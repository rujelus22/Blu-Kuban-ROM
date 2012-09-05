.class Lcom/sec/android/app/myfiles/AllFileBrowser$13;
.super Landroid/os/Handler;
.source "AllFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/AllFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    iget v0, v0, Lcom/sec/android/app/myfiles/AllFileBrowser;->mThreadState:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_17

    .line 773
    const-string v0, "MyFiles"

    const-string v1, "MainActivity : Wait 1000ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/myfiles/AllFileBrowser$13;->sendEmptyMessageDelayed(IJ)Z

    .line 787
    :cond_16
    :goto_16
    return-void

    .line 776
    :cond_17
    const-string v0, "MyFiles"

    const-string v1, "MainActivity : Ui start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v0, "MyFiles"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity : Ui start -  handleMessage -bRefreshMediaEject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$1300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    invoke-static {}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$1300()I

    move-result v0

    if-ne v0, v3, :cond_45

    .line 781
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showWaitProgressDialog(Z)V

    .line 783
    :cond_45
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mInitRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$1200(Lcom/sec/android/app/myfiles/AllFileBrowser;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_16
.end method
