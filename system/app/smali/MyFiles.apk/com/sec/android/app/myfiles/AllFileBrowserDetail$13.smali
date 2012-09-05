.class Lcom/sec/android/app/myfiles/AllFileBrowserDetail$13;
.super Landroid/os/Handler;
.source "AllFileBrowserDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    iget v0, v0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mThreadState:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_f

    .line 710
    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$13;->sendEmptyMessageDelayed(IJ)Z

    .line 716
    :cond_e
    :goto_e
    return-void

    .line 712
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$13;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mInitRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$1200(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_e
.end method
