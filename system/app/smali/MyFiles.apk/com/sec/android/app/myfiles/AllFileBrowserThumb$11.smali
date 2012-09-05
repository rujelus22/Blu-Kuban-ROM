.class Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;
.super Landroid/os/Handler;
.source "AllFileBrowserThumb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserThumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V
    .registers 2
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 528
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_7a

    .line 554
    :goto_5
    return-void

    .line 530
    :pswitch_6
    const-string v1, "MyFiles"

    const-string v2, "Loading handler - start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    const/16 v2, 0x15

    iput v2, v1, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mThreadState:I

    goto :goto_5

    .line 535
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$1000(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Lcom/sec/android/app/myfiles/ListAdapterThumb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->clearAll()V

    .line 536
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterThumb;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$1000(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Lcom/sec/android/app/myfiles/ListAdapterThumb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapterThumb;->pause()V

    .line 538
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->updateAdapter()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$1100(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    .line 540
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$400(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 541
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mListPositionMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$500(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$400(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 542
    .local v0, prevPosition:I
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$300(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 545
    .end local v0           #prevPosition:I
    :cond_5c
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$300(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->requestFocus()Z

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->showWaitProgressDialog(Z)V

    .line 547
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    const/16 v2, 0x16

    iput v2, v1, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->mThreadState:I

    .line 548
    const-string v1, "MyFiles"

    const-string v2, "Loading handler - finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 528
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
    .end packed-switch
.end method
