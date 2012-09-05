.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$4;
.super Landroid/os/Handler;
.source "ManagedFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$4;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 428
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 443
    :goto_5
    return-void

    .line 430
    :pswitch_6
    const-string v0, "MyFiles"

    const-string v1, "Loading handler - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$4;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/16 v1, 0x15

    iput v1, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mThreadState:I

    goto :goto_5

    .line 434
    :pswitch_14
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$4;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->updateAdapter()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1200(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$4;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->showWaitProgressDialog(Z)V

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$4;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/16 v1, 0x16

    iput v1, v0, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mThreadState:I

    .line 438
    const-string v0, "MyFiles"

    const-string v1, "Loading handler - finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 428
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
    .end packed-switch
.end method
