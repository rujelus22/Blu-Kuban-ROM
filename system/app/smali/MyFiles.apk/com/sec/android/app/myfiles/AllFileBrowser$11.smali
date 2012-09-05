.class Lcom/sec/android/app/myfiles/AllFileBrowser$11;
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
    .line 496
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 498
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_7a

    .line 523
    :goto_5
    return-void

    .line 500
    :pswitch_6
    const-string v1, "MyFiles"

    const-string v2, "Loading handler - start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    const/16 v2, 0x15

    iput v2, v1, Lcom/sec/android/app/myfiles/AllFileBrowser;->mThreadState:I

    goto :goto_5

    .line 505
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$1000(Lcom/sec/android/app/myfiles/AllFileBrowser;)Lcom/sec/android/app/myfiles/ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->clearAll()V

    .line 507
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapter;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$1000(Lcom/sec/android/app/myfiles/AllFileBrowser;)Lcom/sec/android/app/myfiles/ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapter;->pause()V

    .line 509
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowser;->updateAdapter()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$1100(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    .line 511
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$500(Lcom/sec/android/app/myfiles/AllFileBrowser;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$400(Lcom/sec/android/app/myfiles/AllFileBrowser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mListPositionMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$500(Lcom/sec/android/app/myfiles/AllFileBrowser;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$400(Lcom/sec/android/app/myfiles/AllFileBrowser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 513
    .local v0, prevPosition:I
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$300(Lcom/sec/android/app/myfiles/AllFileBrowser;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 515
    .end local v0           #prevPosition:I
    :cond_5c
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowser;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$300(Lcom/sec/android/app/myfiles/AllFileBrowser;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 516
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/AllFileBrowser;->showWaitProgressDialog(Z)V

    .line 517
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    const/16 v2, 0x16

    iput v2, v1, Lcom/sec/android/app/myfiles/AllFileBrowser;->mThreadState:I

    .line 518
    const-string v1, "MyFiles"

    const-string v2, "Loading handler - finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 498
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
    .end packed-switch
.end method
