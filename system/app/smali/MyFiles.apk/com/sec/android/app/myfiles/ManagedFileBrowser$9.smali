.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;
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
    .line 873
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 875
    monitor-enter p0

    :try_start_1
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_8b

    packed-switch v1, :pswitch_data_14e

    .line 964
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 877
    :pswitch_8
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2302(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Z)Z

    .line 878
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$502(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 879
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->operationName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$600(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 881
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 883
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 884
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$1;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 895
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->cancelMsg:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9$2;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 904
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$500(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_89
    .catchall {:try_start_8 .. :try_end_89} :catchall_8b

    goto/16 :goto_6

    .line 875
    :catchall_8b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 908
    :pswitch_8e
    :try_start_8e
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2600(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    .line 909
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationCanceled:Z
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2300(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 910
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 911
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mCurrentFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 912
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->setResult(ILandroid/content/Intent;)V

    .line 914
    .end local v0           #i:Landroid/content/Intent;
    :cond_b3
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->finish()V

    goto/16 :goto_6

    .line 918
    :pswitch_ba
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2600(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    .line 920
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperation:I
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$1400(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)I

    move-result v1

    packed-switch v1, :pswitch_data_15a

    .line 934
    :goto_c8
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2302(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Z)Z

    .line 935
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 936
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2700(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 922
    :pswitch_e8
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2702(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Ljava/lang/String;)Ljava/lang/String;

    .line 923
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mErrorType:I
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2802(Lcom/sec/android/app/myfiles/ManagedFileBrowser;I)I

    goto :goto_c8

    .line 926
    :pswitch_101
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2702(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Ljava/lang/String;)Ljava/lang/String;

    .line 927
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/4 v2, 0x2

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mErrorType:I
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2802(Lcom/sec/android/app/myfiles/ManagedFileBrowser;I)I

    goto :goto_c8

    .line 930
    :pswitch_11a
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->errorMsg:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2702(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Ljava/lang/String;)Ljava/lang/String;

    .line 931
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/4 v2, 0x3

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mErrorType:I
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2802(Lcom/sec/android/app/myfiles/ManagedFileBrowser;I)I

    goto :goto_c8

    .line 941
    :pswitch_133
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->closeProgressDialog()V
    invoke-static {v1}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2600(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V

    .line 942
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/myfiles/ManagedFileBrowser;->mOperationCanceled:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->access$2302(Lcom/sec/android/app/myfiles/ManagedFileBrowser;Z)Z

    .line 955
    iget-object v1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$9;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    const v2, 0x7f090048

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_14b
    .catchall {:try_start_8e .. :try_end_14b} :catchall_8b

    goto/16 :goto_6

    .line 875
    nop

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8e
        :pswitch_ba
        :pswitch_133
    .end packed-switch

    .line 920
    :pswitch_data_15a
    .packed-switch 0x2
        :pswitch_11a
        :pswitch_e8
        :pswitch_101
    .end packed-switch
.end method
