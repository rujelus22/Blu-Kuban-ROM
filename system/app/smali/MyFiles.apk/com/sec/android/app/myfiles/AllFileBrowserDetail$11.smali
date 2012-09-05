.class Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;
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
    .line 443
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 445
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_7a

    .line 468
    :goto_5
    return-void

    .line 447
    :pswitch_6
    const-string v1, "MyFiles"

    const-string v2, "Loading handler - start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    const/16 v2, 0x15

    iput v2, v1, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mThreadState:I

    goto :goto_5

    .line 451
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$1000(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Lcom/sec/android/app/myfiles/ListAdapterDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->clearAll()V

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mAdapter:Lcom/sec/android/app/myfiles/ListAdapterDetail;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$1000(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Lcom/sec/android/app/myfiles/ListAdapterDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ListAdapterDetail;->pause()V

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->updateAdapter()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$1100(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$500(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$400(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 457
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListPositionMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$500(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$400(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 458
    .local v0, prevPosition:I
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$300(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 460
    .end local v0           #prevPosition:I
    :cond_5c
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #getter for: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$300(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->showWaitProgressDialog(Z)V

    .line 462
    iget-object v1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$11;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    const/16 v2, 0x16

    iput v2, v1, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->mThreadState:I

    .line 463
    const-string v1, "MyFiles"

    const-string v2, "Loading handler - finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 445
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
    .end packed-switch
.end method
